variable "account_id" {
  type = string
}

variable "display_name" {
  type = string
}

variable "description" {
  type        = string
  description = ""
}

variable "disabled" {
  type    = bool
  default = false
}

variable "project" {
  type = string
}
