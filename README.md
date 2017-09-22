tf-aws-ads
-----

This module is for creating an AWS Directory Service.

<br />

Usage
-----

```js

module "ads" {
    source = "git::ssh://git@gogs.bashton.net/Bashton-Terraform-Modules/tf-aws-ads.git

    domain_name = "something.com"
    domain_password = "S0meth1ng!"
    ad_type = "SimpleAD"
    ad_size = "Small"

    vpc_id = "vpc-xxxxxxxx"
    subnet_ids = "subnet-01234567,subnet-10234567"
}

```


Variables
---------
_Variables marked with [*] are mandatory._

 - `domain_name` - the fully qualified name of the directory. [*]

 - `domain_password` - the password for the directory administrator or connector user.

 - `ad_size` - The size of AD you require, `small` or `large` are accepted values [Default: "small"]

 - `vpc_id` - The ID of the VPC you want the AD created in. [*]

 - `subnet_ids` - The two subnet ID's you want your AD created in. This would generally be two of your private subnets. [*]

 - `ad_type` - The directory type, `SimpleAD` or `MicrosoftAD` are accepted values. [Default: "SimpleAD"]

<br />

Outputs
---------
 - `id` - The directory identifier.

 - `access_url` - The access URL for the directory, such as http://alias.awsapps.com.

 - `dns_ip_addresses`- A list of IP addresses of the DNS servers for the directory or connector.