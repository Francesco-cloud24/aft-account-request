# Copyright Amazon.com, Inc. or its affiliates. All rights reserved.
# SPDX-License-Identifier: Apache-2.0
#
module "workload01" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail = "francesco.spinelli+work1@nttdata.com"
    AccountName  = "workload01"
    # Syntax for top-level OU
    # ManagedOrganizationalUnit = "Security"
    # Syntax for nested OU
    ManagedOrganizationalUnit = "Sandbox"
    SSOUserEmail     = "do-not-use@example.com"
    SSOUserFirstName = "do-not-use"
    SSOUserLastName  = "do-not-use"
  }

  account_tags = {
    "ABC:Owner"       = "owner@example.com"
    "ABC:Environment" = "Dev"
    "ABC:Project"     = "Workload 01"
  }

  change_management_parameters = {
    change_requested_by = "John Doe"
    change_reason       = "workload01 account creation"
  }

  custom_fields = {
    environment = "dev"
    account_name = "workload01"
    vpc_parameters_eu_west_1 = jsonencode({
      "wrk01-eu-west-1" = {
        vpc_cidr             = "10.0.1.0/24"
        vpc_layout           = "workload_one_public_and_private_2az"
        enable_local_subnets = false
      }
    })
  }

  account_customizations_name = "workload01"
}
