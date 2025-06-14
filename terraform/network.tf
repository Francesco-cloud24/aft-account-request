# Copyright Amazon.com, Inc. or its affiliates. All rights reserved.
# SPDX-License-Identifier: Apache-2.0
#
module "network" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail = "francesco.spinelli+net@nttdata.com"
    AccountName  = "network"
    # Syntax for top-level OU
    # ManagedOrganizationalUnit = "Foundation"
    # Syntax for nested OU
    ManagedOrganizationalUnit = "Foundational"
    SSOUserEmail              = "do-not-use@example.com"
    SSOUserFirstName          = "do-not-use"
    SSOUserLastName           = "do-not-use"
  }

  account_tags = {
    "ABC:Owner"       = "owner@example.com"
    "ABC:Environment" = "Prod"
    "ABC:Project"     = "LandingZone"
  }

  change_management_parameters = {
    change_requested_by = "John Doe"
    change_reason       = "network account creation"
  }

  custom_fields = {
  }

  account_customizations_name = "network"
}
