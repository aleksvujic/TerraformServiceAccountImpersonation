resource "google_project" "demo" {
  auto_create_network = true
  name                = "quizzical-flamboyant-elgamal"
  org_id              = var.org_id
  project_id          = "afv39h555njyegzpk7mwnj5x8"
}
