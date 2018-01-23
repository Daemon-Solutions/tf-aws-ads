/* Active Directory ports */

resource "aws_security_group" "ads_sg" {
  count       = "${var.ad_type == "" ? 0 : 1}"
  name        = "${var.customer}-${var.envname}-ads"
  vpc_id      = "${data.aws_subnet.private.vpc_id}"
  description = "ads security group"
}

resource "aws_security_group_rule" "egress-1024-65535-TCP" {
  count             = "${var.ad_type == "" ? 0 : 1}"
  type              = "egress"
  protocol          = "TCP"
  from_port         = "1024"
  to_port           = "65535"
  security_group_id = "${aws_security_group.ads_sg.id}"
  cidr_blocks       = ["${element(aws_directory_service_directory.ads.dns_ip_addresses,0)}/32", "${element(aws_directory_service_directory.ads.dns_ip_addresses,1)}/32"]
}

resource "aws_security_group_rule" "egress-1024-65535-UDP" {
  count             = "${var.ad_type == "" ? 0 : 1}"
  type              = "egress"
  protocol          = "UDP"
  from_port         = "1024"
  to_port           = "65535"
  security_group_id = "${aws_security_group.ads_sg.id}"
  cidr_blocks       = ["${element(aws_directory_service_directory.ads.dns_ip_addresses,0)}/32", "${element(aws_directory_service_directory.ads.dns_ip_addresses,1)}/32"]
}

resource "aws_security_group_rule" "egress-123-123-UDP" {
  count             = "${var.ad_type == "" ? 0 : 1}"
  type              = "egress"
  protocol          = "UDP"
  from_port         = "123"
  to_port           = "123"
  security_group_id = "${aws_security_group.ads_sg.id}"
  cidr_blocks       = ["${element(aws_directory_service_directory.ads.dns_ip_addresses,0)}/32", "${element(aws_directory_service_directory.ads.dns_ip_addresses,1)}/32"]
}

resource "aws_security_group_rule" "egress-135-135-TCP" {
  count             = "${var.ad_type == "" ? 0 : 1}"
  type              = "egress"
  protocol          = "TCP"
  from_port         = "135"
  to_port           = "135"
  security_group_id = "${aws_security_group.ads_sg.id}"
  cidr_blocks       = ["${element(aws_directory_service_directory.ads.dns_ip_addresses,0)}/32", "${element(aws_directory_service_directory.ads.dns_ip_addresses,1)}/32"]
}

resource "aws_security_group_rule" "egress-137-138-UDP" {
  count             = "${var.ad_type == "" ? 0 : 1}"
  type              = "egress"
  protocol          = "UDP"
  from_port         = "137"
  to_port           = "138"
  security_group_id = "${aws_security_group.ads_sg.id}"
  cidr_blocks       = ["${element(aws_directory_service_directory.ads.dns_ip_addresses,0)}/32", "${element(aws_directory_service_directory.ads.dns_ip_addresses,1)}/32"]
}

resource "aws_security_group_rule" "egress-139-139-TCP" {
  count             = "${var.ad_type == "" ? 0 : 1}"
  type              = "egress"
  protocol          = "TCP"
  from_port         = "139"
  to_port           = "139"
  security_group_id = "${aws_security_group.ads_sg.id}"
  cidr_blocks       = ["${element(aws_directory_service_directory.ads.dns_ip_addresses,0)}/32", "${element(aws_directory_service_directory.ads.dns_ip_addresses,1)}/32"]
}

resource "aws_security_group_rule" "egress-3268-3268-TCP" {
  count             = "${var.ad_type == "" ? 0 : 1}"
  type              = "egress"
  protocol          = "TCP"
  from_port         = "3268"
  to_port           = "3268"
  security_group_id = "${aws_security_group.ads_sg.id}"
  cidr_blocks       = ["${element(aws_directory_service_directory.ads.dns_ip_addresses,0)}/32", "${element(aws_directory_service_directory.ads.dns_ip_addresses,1)}/32"]
}

resource "aws_security_group_rule" "egress-389-389-TCP" {
  count             = "${var.ad_type == "" ? 0 : 1}"
  type              = "egress"
  protocol          = "TCP"
  from_port         = "389"
  to_port           = "389"
  security_group_id = "${aws_security_group.ads_sg.id}"
  cidr_blocks       = ["${element(aws_directory_service_directory.ads.dns_ip_addresses,0)}/32", "${element(aws_directory_service_directory.ads.dns_ip_addresses,1)}/32"]
}

resource "aws_security_group_rule" "egress-389-389-UDP" {
  count             = "${var.ad_type == "" ? 0 : 1}"
  type              = "egress"
  protocol          = "UDP"
  from_port         = "389"
  to_port           = "389"
  security_group_id = "${aws_security_group.ads_sg.id}"
  cidr_blocks       = ["${element(aws_directory_service_directory.ads.dns_ip_addresses,0)}/32", "${element(aws_directory_service_directory.ads.dns_ip_addresses,1)}/32"]
}

resource "aws_security_group_rule" "egress-445-445-TCP" {
  count             = "${var.ad_type == "" ? 0 : 1}"
  type              = "egress"
  protocol          = "TCP"
  from_port         = "445"
  to_port           = "445"
  security_group_id = "${aws_security_group.ads_sg.id}"
  cidr_blocks       = ["${element(aws_directory_service_directory.ads.dns_ip_addresses,0)}/32", "${element(aws_directory_service_directory.ads.dns_ip_addresses,1)}/32"]
}

resource "aws_security_group_rule" "egress-445-445-UDP" {
  count             = "${var.ad_type == "" ? 0 : 1}"
  type              = "egress"
  protocol          = "UDP"
  from_port         = "445"
  to_port           = "445"
  security_group_id = "${aws_security_group.ads_sg.id}"
  cidr_blocks       = ["${element(aws_directory_service_directory.ads.dns_ip_addresses,0)}/32", "${element(aws_directory_service_directory.ads.dns_ip_addresses,1)}/32"]
}

resource "aws_security_group_rule" "egress-53-53-TCP" {
  count             = "${var.ad_type == "" ? 0 : 1}"
  type              = "egress"
  protocol          = "TCP"
  from_port         = "53"
  to_port           = "53"
  security_group_id = "${aws_security_group.ads_sg.id}"
  cidr_blocks       = ["${element(aws_directory_service_directory.ads.dns_ip_addresses,0)}/32", "${element(aws_directory_service_directory.ads.dns_ip_addresses,1)}/32"]
}

resource "aws_security_group_rule" "egress-53-53-UDP" {
  count             = "${var.ad_type == "" ? 0 : 1}"
  type              = "egress"
  protocol          = "UDP"
  from_port         = "53"
  to_port           = "53"
  security_group_id = "${aws_security_group.ads_sg.id}"
  cidr_blocks       = ["${element(aws_directory_service_directory.ads.dns_ip_addresses,0)}/32", "${element(aws_directory_service_directory.ads.dns_ip_addresses,1)}/32"]
}

resource "aws_security_group_rule" "egress-873-873-TCP" {
  count             = "${var.ad_type == "" ? 0 : 1}"
  type              = "egress"
  protocol          = "TCP"
  from_port         = "873"
  to_port           = "873"
  security_group_id = "${aws_security_group.ads_sg.id}"
  cidr_blocks       = ["${element(aws_directory_service_directory.ads.dns_ip_addresses,0)}/32", "${element(aws_directory_service_directory.ads.dns_ip_addresses,1)}/32"]
}

resource "aws_security_group_rule" "egress-88-88-TCP" {
  count             = "${var.ad_type == "" ? 0 : 1}"
  type              = "egress"
  protocol          = "TCP"
  from_port         = "88"
  to_port           = "88"
  security_group_id = "${aws_security_group.ads_sg.id}"
  cidr_blocks       = ["${element(aws_directory_service_directory.ads.dns_ip_addresses,0)}/32", "${element(aws_directory_service_directory.ads.dns_ip_addresses,1)}/32"]
}

resource "aws_security_group_rule" "egress-88-88-UDP" {
  count             = "${var.ad_type == "" ? 0 : 1}"
  type              = "egress"
  protocol          = "UDP"
  from_port         = "88"
  to_port           = "88"
  security_group_id = "${aws_security_group.ads_sg.id}"
  cidr_blocks       = ["${element(aws_directory_service_directory.ads.dns_ip_addresses,0)}/32", "${element(aws_directory_service_directory.ads.dns_ip_addresses,1)}/32"]
}

resource "aws_security_group_rule" "ingress-53-53-TCP" {
  count             = "${var.ad_type == "" ? 0 : 1}"
  type              = "ingress"
  protocol          = "TCP"
  from_port         = "53"
  to_port           = "53"
  security_group_id = "${aws_security_group.ads_sg.id}"
  cidr_blocks       = ["${element(aws_directory_service_directory.ads.dns_ip_addresses,0)}/32", "${element(aws_directory_service_directory.ads.dns_ip_addresses,1)}/32"]
}

resource "aws_security_group_rule" "ingress-1024-65535-TCP" {
  count             = "${var.ad_type == "" ? 0 : 1}"
  type              = "ingress"
  protocol          = "TCP"
  from_port         = "1024"
  to_port           = "65535"
  security_group_id = "${aws_security_group.ads_sg.id}"
  cidr_blocks       = ["${element(aws_directory_service_directory.ads.dns_ip_addresses,0)}/32", "${element(aws_directory_service_directory.ads.dns_ip_addresses,1)}/32"]
}

resource "aws_security_group_rule" "ingress-1024-65535-UDP" {
  count             = "${var.ad_type == "" ? 0 : 1}"
  type              = "ingress"
  protocol          = "UDP"
  from_port         = "1024"
  to_port           = "65535"
  security_group_id = "${aws_security_group.ads_sg.id}"
  cidr_blocks       = ["${element(aws_directory_service_directory.ads.dns_ip_addresses,0)}/32", "${element(aws_directory_service_directory.ads.dns_ip_addresses,1)}/32"]
}

resource "aws_security_group_rule" "ingress-123-123-UDP" {
  count             = "${var.ad_type == "" ? 0 : 1}"
  type              = "ingress"
  protocol          = "UDP"
  from_port         = "123"
  to_port           = "123"
  security_group_id = "${aws_security_group.ads_sg.id}"
  cidr_blocks       = ["${element(aws_directory_service_directory.ads.dns_ip_addresses,0)}/32", "${element(aws_directory_service_directory.ads.dns_ip_addresses,1)}/32"]
}

resource "aws_security_group_rule" "ingress-135-135-TCP" {
  count             = "${var.ad_type == "" ? 0 : 1}"
  type              = "ingress"
  protocol          = "TCP"
  from_port         = "135"
  to_port           = "135"
  security_group_id = "${aws_security_group.ads_sg.id}"
  cidr_blocks       = ["${element(aws_directory_service_directory.ads.dns_ip_addresses,0)}/32", "${element(aws_directory_service_directory.ads.dns_ip_addresses,1)}/32"]
}

resource "aws_security_group_rule" "ingress-137-138-UDP" {
  count             = "${var.ad_type == "" ? 0 : 1}"
  type              = "ingress"
  protocol          = "UDP"
  from_port         = "137"
  to_port           = "138"
  security_group_id = "${aws_security_group.ads_sg.id}"
  cidr_blocks       = ["${element(aws_directory_service_directory.ads.dns_ip_addresses,0)}/32", "${element(aws_directory_service_directory.ads.dns_ip_addresses,1)}/32"]
}

resource "aws_security_group_rule" "ingress-139-139-TCP" {
  count             = "${var.ad_type == "" ? 0 : 1}"
  type              = "ingress"
  protocol          = "TCP"
  from_port         = "139"
  to_port           = "139"
  security_group_id = "${aws_security_group.ads_sg.id}"
  cidr_blocks       = ["${element(aws_directory_service_directory.ads.dns_ip_addresses,0)}/32", "${element(aws_directory_service_directory.ads.dns_ip_addresses,1)}/32"]
}

resource "aws_security_group_rule" "ingress-3268-3268-TCP" {
  count             = "${var.ad_type == "" ? 0 : 1}"
  type              = "ingress"
  protocol          = "TCP"
  from_port         = "3268"
  to_port           = "3268"
  security_group_id = "${aws_security_group.ads_sg.id}"
  cidr_blocks       = ["${element(aws_directory_service_directory.ads.dns_ip_addresses,0)}/32", "${element(aws_directory_service_directory.ads.dns_ip_addresses,1)}/32"]
}

resource "aws_security_group_rule" "ingress-389-389-TCP" {
  count             = "${var.ad_type == "" ? 0 : 1}"
  type              = "ingress"
  protocol          = "TCP"
  from_port         = "389"
  to_port           = "389"
  security_group_id = "${aws_security_group.ads_sg.id}"
  cidr_blocks       = ["${element(aws_directory_service_directory.ads.dns_ip_addresses,0)}/32", "${element(aws_directory_service_directory.ads.dns_ip_addresses,1)}/32"]
}

resource "aws_security_group_rule" "ingress-389-389-UDP" {
  count             = "${var.ad_type == "" ? 0 : 1}"
  type              = "ingress"
  protocol          = "UDP"
  from_port         = "389"
  to_port           = "389"
  security_group_id = "${aws_security_group.ads_sg.id}"
  cidr_blocks       = ["${element(aws_directory_service_directory.ads.dns_ip_addresses,0)}/32", "${element(aws_directory_service_directory.ads.dns_ip_addresses,1)}/32"]
}

resource "aws_security_group_rule" "ingress-445-445-TCP" {
  count             = "${var.ad_type == "" ? 0 : 1}"
  type              = "ingress"
  protocol          = "TCP"
  from_port         = "445"
  to_port           = "445"
  security_group_id = "${aws_security_group.ads_sg.id}"
  cidr_blocks       = ["${element(aws_directory_service_directory.ads.dns_ip_addresses,0)}/32", "${element(aws_directory_service_directory.ads.dns_ip_addresses,1)}/32"]
}

resource "aws_security_group_rule" "ingress-445-445-UDP" {
  count             = "${var.ad_type == "" ? 0 : 1}"
  type              = "ingress"
  protocol          = "UDP"
  from_port         = "445"
  to_port           = "445"
  security_group_id = "${aws_security_group.ads_sg.id}"
  cidr_blocks       = ["${element(aws_directory_service_directory.ads.dns_ip_addresses,0)}/32", "${element(aws_directory_service_directory.ads.dns_ip_addresses,1)}/32"]
}

resource "aws_security_group_rule" "ingress-53-53-UDP" {
  count             = "${var.ad_type == "" ? 0 : 1}"
  type              = "ingress"
  protocol          = "UDP"
  from_port         = "53"
  to_port           = "53"
  security_group_id = "${aws_security_group.ads_sg.id}"
  cidr_blocks       = ["${element(aws_directory_service_directory.ads.dns_ip_addresses,0)}/32", "${element(aws_directory_service_directory.ads.dns_ip_addresses,1)}/32"]
}

resource "aws_security_group_rule" "ingress-873-873-TCP" {
  count             = "${var.ad_type == "" ? 0 : 1}"
  type              = "ingress"
  protocol          = "TCP"
  from_port         = "873"
  to_port           = "873"
  security_group_id = "${aws_security_group.ads_sg.id}"
  cidr_blocks       = ["${element(aws_directory_service_directory.ads.dns_ip_addresses,0)}/32", "${element(aws_directory_service_directory.ads.dns_ip_addresses,1)}/32"]
}

resource "aws_security_group_rule" "ingress-88-88-TCP" {
  count             = "${var.ad_type == "" ? 0 : 1}"
  type              = "ingress"
  protocol          = "TCP"
  from_port         = "88"
  to_port           = "88"
  security_group_id = "${aws_security_group.ads_sg.id}"
  cidr_blocks       = ["${element(aws_directory_service_directory.ads.dns_ip_addresses,0)}/32", "${element(aws_directory_service_directory.ads.dns_ip_addresses,1)}/32"]
}

resource "aws_security_group_rule" "ingress-88-88-UDP" {
  count             = "${var.ad_type == "" ? 0 : 1}"
  type              = "ingress"
  protocol          = "UDP"
  from_port         = "88"
  to_port           = "88"
  security_group_id = "${aws_security_group.ads_sg.id}"
  cidr_blocks       = ["${element(aws_directory_service_directory.ads.dns_ip_addresses,0)}/32", "${element(aws_directory_service_directory.ads.dns_ip_addresses,1)}/32"]
}
