# ads

resource "aws_directory_service_directory" "ads" {
  name     = "${var.domain_name}"
  password = "${var.domain_password}"
  size     = "${var.ad_size}"
  type     = "${var.ad_type}"

  vpc_settings {
    vpc_id     = "${data.aws_subnet.private.vpc_id}"
    subnet_ids = ["${var.subnet_ids}"]
  }
}

resource "aws_security_group" "ads_sg" {
  name        = "${var.customer}-${var.envname}-ads"
  vpc_id      = "${data.aws_subnet.private.vpc_id}"
  description = "ads security group"
}

resource "aws_security_group_rule" "egress-1024-65535-TCP" {
  type              = "egress"
  protocol          = "TCP"
  from_port         = "1024"
  to_port           = "65535"
  security_group_id = "${aws_security_group.ads_sg.id}"
  cidr_blocks       = ["${element(aws_directory_service_directory.ads.dns_ip_addresses,0)}/32", "${element(aws_directory_service_directory.ads.dns_ip_addresses,1)}/32"]
}

resource "aws_security_group_rule" "egress-1024-65535-UDP" {
  type              = "egress"
  protocol          = "UDP"
  from_port         = "1024"
  to_port           = "65535"
  security_group_id = "${aws_security_group.ads_sg.id}"
  cidr_blocks       = ["${element(aws_directory_service_directory.ads.dns_ip_addresses,0)}/32", "${element(aws_directory_service_directory.ads.dns_ip_addresses,1)}/32"]
}

resource "aws_security_group_rule" "egress-123-123-UDP" {
  type              = "egress"
  protocol          = "UDP"
  from_port         = "123"
  to_port           = "123"
  security_group_id = "${aws_security_group.ads_sg.id}"
  cidr_blocks       = ["${element(aws_directory_service_directory.ads.dns_ip_addresses,0)}/32", "${element(aws_directory_service_directory.ads.dns_ip_addresses,1)}/32"]
}

resource "aws_security_group_rule" "egress-135-135-TCP" {
  type              = "egress"
  protocol          = "TCP"
  from_port         = "135"
  to_port           = "135"
  security_group_id = "${aws_security_group.ads_sg.id}"
  cidr_blocks       = ["${element(aws_directory_service_directory.ads.dns_ip_addresses,0)}/32", "${element(aws_directory_service_directory.ads.dns_ip_addresses,1)}/32"]
}

resource "aws_security_group_rule" "egress-137-138-UDP" {
  type              = "egress"
  protocol          = "UDP"
  from_port         = "137"
  to_port           = "138"
  security_group_id = "${aws_security_group.ads_sg.id}"
  cidr_blocks       = ["${element(aws_directory_service_directory.ads.dns_ip_addresses,0)}/32", "${element(aws_directory_service_directory.ads.dns_ip_addresses,1)}/32"]
}

resource "aws_security_group_rule" "egress-139-139-TCP" {
  type              = "egress"
  protocol          = "TCP"
  from_port         = "139"
  to_port           = "139"
  security_group_id = "${aws_security_group.ads_sg.id}"
  cidr_blocks       = ["${element(aws_directory_service_directory.ads.dns_ip_addresses,0)}/32", "${element(aws_directory_service_directory.ads.dns_ip_addresses,1)}/32"]
}

resource "aws_security_group_rule" "egress-3268-3268-TCP" {
  type              = "egress"
  protocol          = "TCP"
  from_port         = "3268"
  to_port           = "3268"
  security_group_id = "${aws_security_group.ads_sg.id}"
  cidr_blocks       = ["${element(aws_directory_service_directory.ads.dns_ip_addresses,0)}/32", "${element(aws_directory_service_directory.ads.dns_ip_addresses,1)}/32"]
}

resource "aws_security_group_rule" "egress-389-389-TCP" {
  type              = "egress"
  protocol          = "TCP"
  from_port         = "389"
  to_port           = "389"
  security_group_id = "${aws_security_group.ads_sg.id}"
  cidr_blocks       = ["${element(aws_directory_service_directory.ads.dns_ip_addresses,0)}/32", "${element(aws_directory_service_directory.ads.dns_ip_addresses,1)}/32"]
}

resource "aws_security_group_rule" "egress-389-389-UDP" {
  type              = "egress"
  protocol          = "UDP"
  from_port         = "389"
  to_port           = "389"
  security_group_id = "${aws_security_group.ads_sg.id}"
  cidr_blocks       = ["${element(aws_directory_service_directory.ads.dns_ip_addresses,0)}/32", "${element(aws_directory_service_directory.ads.dns_ip_addresses,1)}/32"]
}

resource "aws_security_group_rule" "egress-445-445-TCP" {
  type              = "egress"
  protocol          = "TCP"
  from_port         = "445"
  to_port           = "445"
  security_group_id = "${aws_security_group.ads_sg.id}"
  cidr_blocks       = ["${element(aws_directory_service_directory.ads.dns_ip_addresses,0)}/32", "${element(aws_directory_service_directory.ads.dns_ip_addresses,1)}/32"]
}

resource "aws_security_group_rule" "egress-445-445-UDP" {
  type              = "egress"
  protocol          = "UDP"
  from_port         = "445"
  to_port           = "445"
  security_group_id = "${aws_security_group.ads_sg.id}"
  cidr_blocks       = ["${element(aws_directory_service_directory.ads.dns_ip_addresses,0)}/32", "${element(aws_directory_service_directory.ads.dns_ip_addresses,1)}/32"]
}

resource "aws_security_group_rule" "egress-53-53-TCP" {
  type              = "egress"
  protocol          = "TCP"
  from_port         = "53"
  to_port           = "53"
  security_group_id = "${aws_security_group.ads_sg.id}"
  cidr_blocks       = ["${element(aws_directory_service_directory.ads.dns_ip_addresses,0)}/32", "${element(aws_directory_service_directory.ads.dns_ip_addresses,1)}/32"]
}

resource "aws_security_group_rule" "egress-53-53-UDP" {
  type              = "egress"
  protocol          = "UDP"
  from_port         = "53"
  to_port           = "53"
  security_group_id = "${aws_security_group.ads_sg.id}"
  cidr_blocks       = ["${element(aws_directory_service_directory.ads.dns_ip_addresses,0)}/32", "${element(aws_directory_service_directory.ads.dns_ip_addresses,1)}/32"]
}

resource "aws_security_group_rule" "egress-873-873-TCP" {
  type              = "egress"
  protocol          = "TCP"
  from_port         = "873"
  to_port           = "873"
  security_group_id = "${aws_security_group.ads_sg.id}"
  cidr_blocks       = ["${element(aws_directory_service_directory.ads.dns_ip_addresses,0)}/32", "${element(aws_directory_service_directory.ads.dns_ip_addresses,1)}/32"]
}

resource "aws_security_group_rule" "egress-88-88-TCP" {
  type              = "egress"
  protocol          = "TCP"
  from_port         = "88"
  to_port           = "88"
  security_group_id = "${aws_security_group.ads_sg.id}"
  cidr_blocks       = ["${element(aws_directory_service_directory.ads.dns_ip_addresses,0)}/32", "${element(aws_directory_service_directory.ads.dns_ip_addresses,1)}/32"]
}

resource "aws_security_group_rule" "egress-88-88-UDP" {
  type              = "egress"
  protocol          = "UDP"
  from_port         = "88"
  to_port           = "88"
  security_group_id = "${aws_security_group.ads_sg.id}"
  cidr_blocks       = ["${element(aws_directory_service_directory.ads.dns_ip_addresses,0)}/32", "${element(aws_directory_service_directory.ads.dns_ip_addresses,1)}/32"]
}

resource "aws_security_group_rule" "ingress-53-53-TCP" {
  type              = "ingress"
  protocol          = "TCP"
  from_port         = "53"
  to_port           = "53"
  security_group_id = "${aws_security_group.ads_sg.id}"
  cidr_blocks       = ["${element(aws_directory_service_directory.ads.dns_ip_addresses,0)}/32", "${element(aws_directory_service_directory.ads.dns_ip_addresses,1)}/32"]
}

resource "aws_security_group_rule" "ingress-1024-65535-TCP" {
  type              = "ingress"
  protocol          = "TCP"
  from_port         = "1024"
  to_port           = "65535"
  security_group_id = "${aws_security_group.ads_sg.id}"
  cidr_blocks       = ["${element(aws_directory_service_directory.ads.dns_ip_addresses,0)}/32", "${element(aws_directory_service_directory.ads.dns_ip_addresses,1)}/32"]
}

resource "aws_security_group_rule" "ingress-1024-65535-UDP" {
  type              = "ingress"
  protocol          = "UDP"
  from_port         = "1024"
  to_port           = "65535"
  security_group_id = "${aws_security_group.ads_sg.id}"
  cidr_blocks       = ["${element(aws_directory_service_directory.ads.dns_ip_addresses,0)}/32", "${element(aws_directory_service_directory.ads.dns_ip_addresses,1)}/32"]
}

resource "aws_security_group_rule" "ingress-123-123-UDP" {
  type              = "ingress"
  protocol          = "UDP"
  from_port         = "123"
  to_port           = "123"
  security_group_id = "${aws_security_group.ads_sg.id}"
  cidr_blocks       = ["${element(aws_directory_service_directory.ads.dns_ip_addresses,0)}/32", "${element(aws_directory_service_directory.ads.dns_ip_addresses,1)}/32"]
}

resource "aws_security_group_rule" "ingress-135-135-TCP" {
  type              = "ingress"
  protocol          = "TCP"
  from_port         = "135"
  to_port           = "135"
  security_group_id = "${aws_security_group.ads_sg.id}"
  cidr_blocks       = ["${element(aws_directory_service_directory.ads.dns_ip_addresses,0)}/32", "${element(aws_directory_service_directory.ads.dns_ip_addresses,1)}/32"]
}

resource "aws_security_group_rule" "ingress-137-138-UDP" {
  type              = "ingress"
  protocol          = "UDP"
  from_port         = "137"
  to_port           = "138"
  security_group_id = "${aws_security_group.ads_sg.id}"
  cidr_blocks       = ["${element(aws_directory_service_directory.ads.dns_ip_addresses,0)}/32", "${element(aws_directory_service_directory.ads.dns_ip_addresses,1)}/32"]
}

resource "aws_security_group_rule" "ingress-139-139-TCP" {
  type              = "ingress"
  protocol          = "TCP"
  from_port         = "139"
  to_port           = "139"
  security_group_id = "${aws_security_group.ads_sg.id}"
  cidr_blocks       = ["${element(aws_directory_service_directory.ads.dns_ip_addresses,0)}/32", "${element(aws_directory_service_directory.ads.dns_ip_addresses,1)}/32"]
}

resource "aws_security_group_rule" "ingress-3268-3268-TCP" {
  type              = "ingress"
  protocol          = "TCP"
  from_port         = "3268"
  to_port           = "3268"
  security_group_id = "${aws_security_group.ads_sg.id}"
  cidr_blocks       = ["${element(aws_directory_service_directory.ads.dns_ip_addresses,0)}/32", "${element(aws_directory_service_directory.ads.dns_ip_addresses,1)}/32"]
}

resource "aws_security_group_rule" "ingress-389-389-TCP" {
  type              = "ingress"
  protocol          = "TCP"
  from_port         = "389"
  to_port           = "389"
  security_group_id = "${aws_security_group.ads_sg.id}"
  cidr_blocks       = ["${element(aws_directory_service_directory.ads.dns_ip_addresses,0)}/32", "${element(aws_directory_service_directory.ads.dns_ip_addresses,1)}/32"]
}

resource "aws_security_group_rule" "ingress-389-389-UDP" {
  type              = "ingress"
  protocol          = "UDP"
  from_port         = "389"
  to_port           = "389"
  security_group_id = "${aws_security_group.ads_sg.id}"
  cidr_blocks       = ["${element(aws_directory_service_directory.ads.dns_ip_addresses,0)}/32", "${element(aws_directory_service_directory.ads.dns_ip_addresses,1)}/32"]
}

resource "aws_security_group_rule" "ingress-445-445-TCP" {
  type              = "ingress"
  protocol          = "TCP"
  from_port         = "445"
  to_port           = "445"
  security_group_id = "${aws_security_group.ads_sg.id}"
  cidr_blocks       = ["${element(aws_directory_service_directory.ads.dns_ip_addresses,0)}/32", "${element(aws_directory_service_directory.ads.dns_ip_addresses,1)}/32"]
}

resource "aws_security_group_rule" "ingress-445-445-UDP" {
  type              = "ingress"
  protocol          = "UDP"
  from_port         = "445"
  to_port           = "445"
  security_group_id = "${aws_security_group.ads_sg.id}"
  cidr_blocks       = ["${element(aws_directory_service_directory.ads.dns_ip_addresses,0)}/32", "${element(aws_directory_service_directory.ads.dns_ip_addresses,1)}/32"]
}

resource "aws_security_group_rule" "ingress-53-53-UDP" {
  type              = "ingress"
  protocol          = "UDP"
  from_port         = "53"
  to_port           = "53"
  security_group_id = "${aws_security_group.ads_sg.id}"
  cidr_blocks       = ["${element(aws_directory_service_directory.ads.dns_ip_addresses,0)}/32", "${element(aws_directory_service_directory.ads.dns_ip_addresses,1)}/32"]
}

resource "aws_security_group_rule" "ingress-873-873-TCP" {
  type              = "ingress"
  protocol          = "TCP"
  from_port         = "873"
  to_port           = "873"
  security_group_id = "${aws_security_group.ads_sg.id}"
  cidr_blocks       = ["${element(aws_directory_service_directory.ads.dns_ip_addresses,0)}/32", "${element(aws_directory_service_directory.ads.dns_ip_addresses,1)}/32"]
}

resource "aws_security_group_rule" "ingress-88-88-TCP" {
  type              = "ingress"
  protocol          = "TCP"
  from_port         = "88"
  to_port           = "88"
  security_group_id = "${aws_security_group.ads_sg.id}"
  cidr_blocks       = ["${element(aws_directory_service_directory.ads.dns_ip_addresses,0)}/32", "${element(aws_directory_service_directory.ads.dns_ip_addresses,1)}/32"]
}

resource "aws_security_group_rule" "ingress-88-88-UDP" {
  type              = "ingress"
  protocol          = "UDP"
  from_port         = "88"
  to_port           = "88"
  security_group_id = "${aws_security_group.ads_sg.id}"
  cidr_blocks       = ["${element(aws_directory_service_directory.ads.dns_ip_addresses,0)}/32", "${element(aws_directory_service_directory.ads.dns_ip_addresses,1)}/32"]
}
