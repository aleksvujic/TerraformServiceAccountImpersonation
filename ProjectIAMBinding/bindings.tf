resource "google_project_iam_binding" "owner" {
  project = var.demo_project_id
  role    = "roles/owner"

  members = [
    var.terraform_service_account.member,
  ]
}
