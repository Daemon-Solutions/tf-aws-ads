# ads

resource "aws_directory_service_directory" "ads" {
  name     = "${var.domain_name}"
  password = "${var.domain_password}"
  size     = "${var.ad_size}"
  type     = "${var.ad_type}"

  vpc_settings {
    vpc_id = "${var.vpc_id}"
    subnet_ids = ["${split(",",var.subnet_ids)}"]
  }
}
