## Environment variables
variable "name_prefix" {
  description = "Resource name prefix"
  type        = string
}

variable "tags" {
  description = "A map of tags"
  type        = map(string)
  default     = {}
}

## Active Directory Services variables
variable "domain_name" {
  description = "The fully qualified name for the directory, such as corp.example.com"
  type        = string
}

variable "domain_password" {
  description = "The password for the directory administrator or connector user"
  type        = string
}

variable "ad_type" {
  description = "The directory type (SimpleAD or MicrosoftAD are accepted values). Defaults to SimpleAD"
  type        = string
  default     = "SimpleAD"
}

variable "ad_edition" {
  description = "The MicrosoftAD edition (Standard or Enterprise). Applies to MicrosoftAD type only"
  type        = string
  default     = ""
}

variable "ad_size" {
  description = "The size of the directory (Small or Large are accepted values)"
  type        = string
  default     = "Small"
}

variable "subnet_ids" {
  description = "The identifiers of the subnets for the directory servers (2 subnets in 2 different AZs)"
  type        = list(string)
}

variable "share_ads" {
  description = "Bool indicating whether to Share AWS Directory Services"
  type        = bool
  default     = false
}

variable "share_ads_targets" {
  description = "Share AWS Directory Services with target AWS accounts"
  type        = list(string)
  default     = []
}
