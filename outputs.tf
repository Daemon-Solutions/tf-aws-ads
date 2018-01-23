## ads module outputs

output "ads_id" {
  value = "${aws_directory_service_directory.ads.id}"
}

output "ads_dns" {
  value = ["${aws_directory_service_directory.ads.dns_ip_addresses}"]
}

output "ads_sg_id" {
  value = ["${ join(" ", aws_security_group.ads_sg.*.id) }"]
}
