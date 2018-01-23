# ads

resource "aws_directory_service_directory" "ads" {
  count      = "${var.ad_type == "" ? 0 : 1}"
  name       = "${var.domain_name}"
  password   = "${var.domain_password}"
  size       = "${var.ad_size}"
  type       = "${var.ad_type}"
  enable_sso = "${var.enable_sso}"
  alias      = "${var.directory_alias}"

  vpc_settings {
    vpc_id     = "${data.aws_subnet.private.vpc_id}"
    subnet_ids = ["${var.subnet_ids}"]
  }
}

resource "aws_directory_service_directory" "ad_connector" {
  count      = "${var.ad_type == "" ? 1 : 0}"
  name       = "${var.domain_name}"
  enable_sso = "${var.enable_sso}"
  alias      = "${var.directory_alias}"
  password   = "${var.domain_password}"

  connect_settings {
    customer_username = "${var.customer_username}"
    customer_dns_ips  = "${var.customer_dns_ips}"
    subnet_ids        = ["${var.subnet_ids}"]
    vpc_id            = "${data.aws_subnet.private.vpc_id}"
  }
}
