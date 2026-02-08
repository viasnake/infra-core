variable "token" {
  description = "Terraform Cloud token"
  type        = string
  sensitive   = true
}

variable "email" {
  description = "Terraform Cloud email"
  type        = string
  sensitive   = true
}
