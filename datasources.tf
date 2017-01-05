## retrieve vpc id  from subnet_ids

data  "aws_subnet" "private" {
  id = "${element(var.subnet_ids,0)}"
  }
