## tf-aws-ads
This module is for creating an AWS Directory Service.


-----


Usage

Declare a module in your Terraform file, for example:

module "tf-aws-ads" {
  source = "git::ssh://git@gogs.bashton.net/Bashton-Terraform-Modules/tf-aws-ads.git

}

Required Variables

domain_name - the fully qualified name of the directory.

domain_password - the password for the directory administrator or connector user.

ad_size - the size of AD you require, small or large are accepted values - default is small.

vpc_id - the ID of the VPC you want the AD created in.

subnet_ids - the subnet ID's you want your AD created in.

Optional Variables

ad_type - The directory type (SimpleAD or MicrosoftAD are accepted values). Defaults to SimpleAD.

Outputs

id - The directory identifier.

access_url - The access URL for the directory, such as http://alias.awsapps.com.

dns_ip_addresses - A list of IP addresses of the DNS servers for the directory or connector.


