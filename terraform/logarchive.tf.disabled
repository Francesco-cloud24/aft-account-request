# Copyright Amazon.com, Inc. or its affiliates. All rights reserved.
# SPDX-License-Identifier: Apache-2.0
#
module "logarchive" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail = "xxxxxxxx"
    AccountName  = "logarchive"
    # Syntax for top-level OU
    ManagedOrganizationalUnit = "Security"
    # Syntax for nested OU
    # ManagedOrganizationalUnit = "Sandbox (ou-xfe5-a8hb8ml8)"
    SSOUserEmail     = "do-not-use@example.com"
    SSOUserFirstName = "do-not-use"
    SSOUserLastName  = "do-not-use"
  }

  account_tags = {
    "ABC:Owner"       = "owner@example.com"
    "ABC:Environment" = "Prod"
    "ABC:Project"     = "LandingZone"
  }

  change_management_parameters = {
    change_requested_by = "John Doe"
    change_reason       = "importing logarchive account"
  }

  custom_fields = {
  }

  account_customizations_name = "logarchive"
}
