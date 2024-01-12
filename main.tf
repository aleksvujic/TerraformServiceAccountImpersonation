terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "5.11.0"
    }
  }
}

##########################
# provider configuration #
##########################
provider "google" {

}

# provider "google" {
#   alias         = "demo"
#   project       = "afv39h555njyegzpk7mwnj5x8"
#   access_token  = data.google_service_account_access_token.default.access_token
# }


# provider "google" {
#  alias  = "impersonation"
# }


# data "google_service_account_access_token" "default" {
#  provider               	= google.impersonation
#  target_service_account 	= module.demo-IAMServiceAccount.terraform_service_account.email
#  scopes                 	= ["userinfo-email", "cloud-platform"]
#  lifetime               	= "1200s"
# }


##########################
######### modules ########
##########################
module "demo-IAMServiceAccount" {
  source = "./IAMServiceAccount"
  # providers = {
  #   google = google.demo
  # }

  demo_project_id = module.demo-Project.demo_project_id
}


module "demo-IAMServiceAccountBinding" {
  source = "./IAMServiceAccountBinding"
  # providers = {
  #   google = google.demo
  # }

  terraform_service_account = module.demo-IAMServiceAccount.terraform_service_account
}


module "demo-Project" {
  source = "./Project"
  # providers = {
  #   google = google.demo
  # }
}


module "demo-ProjectIAMBinding" {
  source = "./ProjectIAMBinding"
  # providers = {
  #   google = google.demo
  # }

  demo_project_id = module.demo-Project.demo_project_id
  terraform_service_account = module.demo-IAMServiceAccount.terraform_service_account
}


module "demo-Service" {
  source = "./Service"
  # providers = {
  #   google = google.demo
  # }

  demo_project_id = module.demo-Project.demo_project_id
}
