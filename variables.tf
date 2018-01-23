## Environment variables
variable "customer" {
  description = "This label gets applied to the security group configuration name as the first label"
  type        = "string"
}

variable "envname" {
  description = "This label gets applied to the security group configuration name as the second label"
  type        = "string"
}

## Active Directory Services variables
variable "domain_name" {
  description = "The fully qualified name for the directory, such as corp.example.com"
  type        = "string"
  default     = ""
}

variable "domain_password" {
  description = "The password for the directory administrator or connector user"
  type        = "string"
  default     = ""
}

variable "ad_type" {
  description = "The directory type (SimpleAD, MicrosoftAD and ADConnector are accepted values). Defaults to SimpleAD"
  type        = "string"
  default     = ""
}

variable "ad_size" {
  description = "The size of the directory (Small or Large are accepted values)"
  type        = "string"
  default     = "Small"
}

variable "subnet_ids" {
  description = "The identifiers of the subnets for the directory servers (2 subnets in 2 different AZs)"
  type        = "list"
}

variable "enable_sso" {
  description = "Whether to enable single-sign on for the directory. Requires alias. Defaults to false."
  default     = "false"
}

variable "directory_alias" {
  description = "The alias for the directory (must be unique amongst all aliases in AWS). Required for enable_sso."
  type        = "string"
  default     = ""
}

/* AD Connector variables */

variable "customer_username" {
  description = "Username to connect to Customers AD"
  type        = "string"
  default     = ""
}

variable "customer_dns_ips" {
  description = "DNS IP addresses of Customer's AD"
  type        = "list"
  default     = [""]
}
