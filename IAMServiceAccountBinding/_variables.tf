variable "terraform_service_account" {
  type = object({
    name    = string
    email   = string
    member  = string
  })
}


variable "token_creator_email" {
  type = string  
}
