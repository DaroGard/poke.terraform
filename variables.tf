variable "subscription_id" {
  type        = string
  description = "azure id"

}

variable "location" {
  type        = string
  description = "server location"
  default     = "Central US"

}

variable "tags" {
  type        = map(string)
  description = "tags"

  default = {
    "environment" = "dev"
    "date"        = "08-2025"
    "CreateBy"    = "Terraform_DavidGarcia"
  }

}

variable "project" {
  type        = string
  description = "project name"
  default     = "pr3pokequeue"

}

variable "environment" {
  type        = string
  description = "environment"
  default     = "env"

}

variable "admin_sql_user" {
  type        = string
  description = "admin username"

}

variable "admin_sql_password" {
  type        = string
  description = "admin password"

}