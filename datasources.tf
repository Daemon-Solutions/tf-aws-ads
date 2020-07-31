data "aws_region" "current" {}

data  "aws_subnet" "private" {
  id = element(var.subnet_ids,0)
}
