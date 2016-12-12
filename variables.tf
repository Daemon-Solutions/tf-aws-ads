## ads variables

variable "domain_name" {}
variable "domain_password" {}

variable "ad_type" {
  default = "SimpleAD"
}

variable "ad_size" {
  default = "small"
}

variable "vpc_id" {}

variable "subnet_ids" {
  type = "list"
}
