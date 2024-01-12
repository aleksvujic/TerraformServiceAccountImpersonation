resource "google_project_service" "gcp_services" {
  for_each = toset([
    "cloudresourcemanager.googleapis.com",
    "iam.googleapis.com",
    "serviceusage.googleapis.com",
  ])
  project = var.demo_project_id
  service = each.key
  disable_on_destroy = false
  timeouts {

  }
}
