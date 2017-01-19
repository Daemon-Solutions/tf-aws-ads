# ads

resource "aws_directory_service_directory" "ads" {
  name     = "${var.domain_name}"
  password = "${var.domain_password}"
  size     = "${var.ad_size}"
  type     = "${var.ad_type}"

  vpc_settings {
    vpc_id = "${data.aws_subnet.private.vpc_id}"
    subnet_ids = ["${var.subnet_ids}"]
  }
}

resource "aws_security_group" "ads_sg" {
  name        = "${var.customer}-${var.envname}-ads"
  vpc_id      = "${data.aws_subnet.private.vpc_id}"
  description = "ads security group"

  egress {
    from_port   = "53"
    to_port     = "53"
    protocol    = "TCP"
    cidr_blocks = ["${element(aws_directory_service_directory.ads.dns_ip_addresses,0)}/32","${element(aws_directory_service_directory.ads.dns_ip_addresses,1)}/32"]

  }

  egress {
    from_port   = "53"
    to_port     = "53"
    protocol    = "UDP"
    cidr_blocks = ["${element(aws_directory_service_directory.ads.dns_ip_addresses,0)}/32","${element(aws_directory_service_directory.ads.dns_ip_addresses,1)}/32"]

  }
  egress {
    from_port   = "88"
    to_port     = "88"
    protocol    = "TCP"
    cidr_blocks = ["${element(aws_directory_service_directory.ads.dns_ip_addresses,0)}/32","${element(aws_directory_service_directory.ads.dns_ip_addresses,1)}/32"]

  }

  egress {
    from_port   = "88"
    to_port     = "88"
    protocol    = "UDP"
    cidr_blocks = ["${element(aws_directory_service_directory.ads.dns_ip_addresses,0)}/32","${element(aws_directory_service_directory.ads.dns_ip_addresses,1)}/32"]

  }

  egress {
    from_port   = "123"
    to_port     = "123"
    protocol    = "UDP"
    cidr_blocks = ["${element(aws_directory_service_directory.ads.dns_ip_addresses,0)}/32","${element(aws_directory_service_directory.ads.dns_ip_addresses,1)}/32"]

  }

  egress {
    from_port   = "135"
    to_port     = "135"
    protocol    = "TCP"
    cidr_blocks = ["${element(aws_directory_service_directory.ads.dns_ip_addresses,0)}/32","${element(aws_directory_service_directory.ads.dns_ip_addresses,1)}/32"]

  }

  egress {
    from_port   = "137"
    to_port     = "138"
    protocol    = "UDP"
    cidr_blocks = ["${element(aws_directory_service_directory.ads.dns_ip_addresses,0)}/32","${element(aws_directory_service_directory.ads.dns_ip_addresses,1)}/32"]

  }

  egress {
    from_port   = "139"
    to_port     = "139"
    protocol    = "TCP"
    cidr_blocks = ["${element(aws_directory_service_directory.ads.dns_ip_addresses,0)}/32","${element(aws_directory_service_directory.ads.dns_ip_addresses,1)}/32"]

  }

  egress {
    from_port   = "389"
    to_port     = "389"
    protocol    = "TCP"
    cidr_blocks = ["${element(aws_directory_service_directory.ads.dns_ip_addresses,0)}/32","${element(aws_directory_service_directory.ads.dns_ip_addresses,1)}/32"]

  }
  egress {
    from_port   = "389"
    to_port     = "389"
    protocol    = "UDP"
    cidr_blocks = ["${element(aws_directory_service_directory.ads.dns_ip_addresses,0)}/32","${element(aws_directory_service_directory.ads.dns_ip_addresses,1)}/32"]

  }

  egress {
    from_port   = "445"
    to_port     = "445"
    protocol    = "TCP"
    cidr_blocks = ["${element(aws_directory_service_directory.ads.dns_ip_addresses,0)}/32","${element(aws_directory_service_directory.ads.dns_ip_addresses,1)}/32"]

  }

  egress {
    from_port   = "445"
    to_port     = "445"
    protocol    = "UDP"
    cidr_blocks = ["${element(aws_directory_service_directory.ads.dns_ip_addresses,0)}/32","${element(aws_directory_service_directory.ads.dns_ip_addresses,1)}/32"]

  }

  egress {
    from_port   = "873"
    to_port     = "873"
    protocol    = "TCP"
    cidr_blocks = ["${element(aws_directory_service_directory.ads.dns_ip_addresses,0)}/32","${element(aws_directory_service_directory.ads.dns_ip_addresses,1)}/32"]

  }

  egress {
    from_port   = "3268"
    to_port     = "3268"
    protocol    = "TCP"
    cidr_blocks = ["${element(aws_directory_service_directory.ads.dns_ip_addresses,0)}/32","${element(aws_directory_service_directory.ads.dns_ip_addresses,1)}/32"]

  }

  egress {
    from_port   = "1024"
    to_port     = "65535"
    protocol    = "TCP"
    cidr_blocks = ["${element(aws_directory_service_directory.ads.dns_ip_addresses,0)}/32","${element(aws_directory_service_directory.ads.dns_ip_addresses,1)}/32"]

  }

  egress {
    from_port   = "1024"
    to_port     = "65535"
    protocol    = "UDP"
    cidr_blocks = ["${element(aws_directory_service_directory.ads.dns_ip_addresses,0)}/32","${element(aws_directory_service_directory.ads.dns_ip_addresses,1)}/32"]

  }

  egress {
    from_port   = "443"
    to_port     = "443"
    protocol    = "TCP"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
  from_port   = "53"
  to_port     = "53"
  protocol    = "TCP"
  cidr_blocks = ["${element(aws_directory_service_directory.ads.dns_ip_addresses,0)}/32","${element(aws_directory_service_directory.ads.dns_ip_addresses,1)}/32"]
}

ingress {
  from_port   = "53"
  to_port     = "53"
  protocol    = "UDP"
  cidr_blocks = ["${element(aws_directory_service_directory.ads.dns_ip_addresses,0)}/32","${element(aws_directory_service_directory.ads.dns_ip_addresses,1)}/32"]
}

ingress {
  from_port   = "88"
  to_port     = "88"
  protocol    = "TCP"
  cidr_blocks = ["${element(aws_directory_service_directory.ads.dns_ip_addresses,0)}/32","${element(aws_directory_service_directory.ads.dns_ip_addresses,1)}/32"]
}

ingress {
  from_port   = "88"
  to_port     = "88"
  protocol    = "UDP"
  cidr_blocks = ["${element(aws_directory_service_directory.ads.dns_ip_addresses,0)}/32","${element(aws_directory_service_directory.ads.dns_ip_addresses,1)}/32"]

}

ingress {
  from_port   = "123"
  to_port     = "123"
  protocol    = "UDP"
  cidr_blocks = ["${element(aws_directory_service_directory.ads.dns_ip_addresses,0)}/32","${element(aws_directory_service_directory.ads.dns_ip_addresses,1)}/32"]

}

ingress {
  from_port   = "135"
  to_port     = "135"
  protocol    = "TCP"
  cidr_blocks = ["${element(aws_directory_service_directory.ads.dns_ip_addresses,0)}/32","${element(aws_directory_service_directory.ads.dns_ip_addresses,1)}/32"]

}

ingress {
  from_port   = "137"
  to_port     = "138"
  protocol    = "UDP"
  cidr_blocks = ["${element(aws_directory_service_directory.ads.dns_ip_addresses,0)}/32","${element(aws_directory_service_directory.ads.dns_ip_addresses,1)}/32"]

}

ingress {
  from_port   = "139"
  to_port     = "139"
  protocol    = "TCP"
  cidr_blocks = ["${element(aws_directory_service_directory.ads.dns_ip_addresses,0)}/32","${element(aws_directory_service_directory.ads.dns_ip_addresses,1)}/32"]

}

ingress {
  from_port   = "389"
  to_port     = "389"
  protocol    = "TCP"
  cidr_blocks = ["${element(aws_directory_service_directory.ads.dns_ip_addresses,0)}/32","${element(aws_directory_service_directory.ads.dns_ip_addresses,1)}/32"]

}
ingress {
  from_port   = "389"
  to_port     = "389"
  protocol    = "UDP"
  cidr_blocks = ["${element(aws_directory_service_directory.ads.dns_ip_addresses,0)}/32","${element(aws_directory_service_directory.ads.dns_ip_addresses,1)}/32"]

}

ingress {
  from_port   = "445"
  to_port     = "445"
  protocol    = "TCP"
  cidr_blocks = ["${element(aws_directory_service_directory.ads.dns_ip_addresses,0)}/32","${element(aws_directory_service_directory.ads.dns_ip_addresses,1)}/32"]

}

ingress {
  from_port   = "445"
  to_port     = "445"
  protocol    = "UDP"
  cidr_blocks = ["${element(aws_directory_service_directory.ads.dns_ip_addresses,0)}/32","${element(aws_directory_service_directory.ads.dns_ip_addresses,1)}/32"]

}

ingress {
  from_port   = "873"
  to_port     = "873"
  protocol    = "TCP"
  cidr_blocks = ["${element(aws_directory_service_directory.ads.dns_ip_addresses,0)}/32","${element(aws_directory_service_directory.ads.dns_ip_addresses,1)}/32"]

}

ingress {
  from_port   = "3268"
  to_port     = "3268"
  protocol    = "TCP"
  cidr_blocks = ["${element(aws_directory_service_directory.ads.dns_ip_addresses,0)}/32","${element(aws_directory_service_directory.ads.dns_ip_addresses,1)}/32"]

}

ingress {
  from_port   = "1024"
  to_port     = "65535"
  protocol    = "TCP"
  cidr_blocks = ["${element(aws_directory_service_directory.ads.dns_ip_addresses,0)}/32","${element(aws_directory_service_directory.ads.dns_ip_addresses,1)}/32"]

}

ingress {
  from_port   = "1024"
  to_port     = "65535"
  protocol    = "UDP"
  cidr_blocks = ["${element(aws_directory_service_directory.ads.dns_ip_addresses,0)}/32","${element(aws_directory_service_directory.ads.dns_ip_addresses,1)}/32"]

}
}
