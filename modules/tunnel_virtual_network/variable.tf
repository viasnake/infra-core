variable "account_id" {
  type = string
}

variable "name" {
  type = string
}

variable "is_default_network" {
  type    = bool
  default = false
}

variable "comment" {
  type    = string
  default = null
}
