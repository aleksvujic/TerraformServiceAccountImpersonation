resource "google_project" "demo" {
  auto_create_network = true
  name                = "optimistic-darwin-fervent"
  org_id              = "123456789876"
  project_id          = "optimistic-darwin-fervent"
}
