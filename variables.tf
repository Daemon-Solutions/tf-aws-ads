## Environment variables
variable "customer" {
  description = "This label gets applied to the security group configuration name as the first label"
  type = "string"
}

variable "envname" {
  description = "This label gets applied to the security group configuration name as the second label"
  type = "string"
}

## Active Directory Services variables
variable "domain_name" {
  description = "The fully qualified name for the directory, such as corp.example.com"
  type = "string"
}

variable "domain_password" {
  description = "The password for the directory administrator or connector user"
  type = "string"
}

variable "ad_type" {
  description = "The directory type (SimpleAD or MicrosoftAD are accepted values). Defaults to SimpleAD"
  type = "string"
  default = "SimpleAD"
}

variable "ad_size" {
  description = "The size of the directory (Small or Large are accepted values)"
  type = "string"
  default = "Small"
}

variable "subnet_ids" {
  description = "The identifiers of the subnets for the directory servers (2 subnets in 2 different AZs)"
  type = "list"
}
