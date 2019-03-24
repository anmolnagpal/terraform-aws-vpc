variable "Name" {
  description = "Name  (e.g. `app` or `cluster`)"
  type        = "string"
}

variable "Environment" {
  type        = "string"
  description = "Environment (e.g. `prod`, `dev`, `staging`)"
}

variable "CreatedBy" {
  type        = "string"
  description = "CreatedBy (e.g. `terrafrom`, `dev`, `devops`)"
}

variable "Organization" {
  type        = "string"
  description = "Organisation (e.g. `clouddrove`, `cd`)"
}

variable "cidr_block" {
  type        = "string"
  description = "CIDR for the VPC"
  default     = ""
}

variable "instance_tenancy" {
  description = "A tenancy option for instances launched into the VPC"
  default     = "default"
}

variable "enable_dns_hostnames" {
  description = "A boolean flag to enable/disable DNS hostnames in the VPC"
  default     = "true"
}

variable "enable_dns_support" {
  description = "A boolean flag to enable/disable DNS support in the VPC"
  default     = "true"
}

variable "enable_classiclink" {
  description = "A boolean flag to enable/disable ClassicLink for the VPC"
  default     = "false"
}

variable "enable_classiclink_dns_support" {
  description = "A boolean flag to enable/disable ClassicLink DNS Support for the VPC"
  default     = "false"
}
