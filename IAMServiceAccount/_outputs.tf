output "terraform_service_account" {
  value = {
    name  = google_service_account.terraform.name
    email = google_service_account.terraform.email
  }
}
