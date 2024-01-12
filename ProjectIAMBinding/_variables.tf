variable "demo_project_id" {
  type = string
}


variable "terraform_service_account" {
  type = object({
    name    = string
    email   = string
    member  = string
  })
}
