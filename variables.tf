## ads variables

variable "customer" {}

variable "envname" {}

variable "vpc_id" {}

variable "vpc_cidr" {}

variable "domain_name" {}

variable "domain_password" {}

variable "ad_type" {
  default = "SimpleAD"
}

variable "ad_size" {
  default = "small"
}

variable "subnet_ids" {
  type = "list"
}
