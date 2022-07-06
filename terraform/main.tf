module "sandboxtest" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "imaginarycorp-account-01@vistry.ai"
    AccountName               = "imaginarycorp-account-01"
    ManagedOrganizationalUnit = "Sandbox"
    SSOUserEmail              = "imaginarycorp-account-01@vistry.ai"
    SSOUserFirstName          = "Imaginary"
    SSOUserLastName           = "Corp"
  }

  account_tags = {
    "ABC:Owner"       = "imaginarycorp-account-01@vistry.ai"
  }

  change_management_parameters = {
    change_requested_by = "Sandbox"
    change_reason       = "testing the account vending process"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "sandbox"
}

module "mlopsdev" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "mlopsdev@vistry.ai"
    AccountName               = "mlopsdev"
    ManagedOrganizationalUnit = "Sandbox"
    SSOUserEmail              = "mlopsdev@vistry.ai"
    SSOUserFirstName          = "MLOps"
    SSOUserLastName           = "Dev"
  }

  account_tags = {
    "ABC:Owner"       = "mlopsdev@vistry.ai"
  }

  change_management_parameters = {
    change_requested_by = "Sandbox"
    change_reason       = "Adding an MLOps Dev accounn"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "sandbox"
}

module "mlops-dev" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "mlops-dev@vistry.ai"
    AccountName               = "mlops-dev"
    ManagedOrganizationalUnit = "Sandbox"
    SSOUserEmail              = "mlops-dev@vistry.ai"
    SSOUserFirstName          = "MLOps"
    SSOUserLastName           = "Dev"
  }

  account_tags = {
    "ABC:Owner"       = "mlops-dev@vistry.ai"
  }

  change_management_parameters = {
    change_requested_by = "Sandbox"
    change_reason       = "Adding an MLOps Dev (mlops-dev@vistry.ai) account"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "sandbox"
}