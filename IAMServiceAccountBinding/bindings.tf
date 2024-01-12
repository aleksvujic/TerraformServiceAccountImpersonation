resource "google_service_account_iam_binding" "iam_serviceAccountTokenCreator" {
  service_account_id = var.terraform_service_account.name
  role               = "roles/iam.serviceAccountTokenCreator"

  members = [
    "user:${var.token_creator_email}"
  ]
}
