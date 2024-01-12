resource "google_service_account" "terraform" {
  account_id   = "terraform"
  description  = "Service account for Terraform"
  display_name = "terraform"
  project      = var.demo_project_id
}
