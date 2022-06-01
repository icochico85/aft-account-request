module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "icochico85@gmail.com "
    AccountName               = "enrico-aft"
    ManagedOrganizationalUnit = "AFT"
    SSOUserEmail              = "enrico.casini@vistry.ai"
    SSOUserFirstName          = "Enrico"
    SSOUserLastName           = "Casini"
  }

  account_tags = {
    "Learn Tutorial" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp Learn"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "sandbox"
}

module "testcorp" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "icochico85@gmail.com"
    AccountName               = "testcorp-account-01"
    ManagedOrganizationalUnit = "Testcorp"
    SSOUserEmail              = "icochico85@gmail.com"
    SSOUserFirstName          = "Test"
    SSOUserLastName           = "Corp"
  }

  account_tags = {
    "ABC:Owner"       = "icochico85@gmail.com"
    "ABC:Division"    = "ENT"
    "ABC:Environment" = "Dev"
    "ABC:CostCenter"  = "123456"
    "ABC:Vended"      = "true"
    "ABC:DivCode"     = "102"
    "ABC:BUCode"      = "ABC003"
    "ABC:Project"     = "123456"
  }

  change_management_parameters = {
    change_requested_by = "Test Corp"
    change_reason       = "testing the account vending process"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "sandbox"
}