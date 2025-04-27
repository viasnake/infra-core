variable "name" {
  type = string
}

variable "organization" {
  type = string
}

variable "tag_names" {
  type    = list(string)
  default = []
}

variable "force_delete" {
  type    = bool
  default = false
}

variable "auto_apply" {
  type    = bool
  default = false
}

variable "auto_apply_run_trigger" {
  type    = bool
  default = false
}

variable "queue_all_runs" {
  type    = bool
  default = true
}

variable "working_directory" {
  type    = string
  default = ""
}

variable "vcs_branch" {
  type    = string
  default = ""
}

variable "vcs_repo_identifier" {
  type    = string
  default = ""
}

variable "vcs_github_app_installation_id" {
  type    = string
  default = ""
}

variable "project_id" {
  type    = string
  default = ""
}
