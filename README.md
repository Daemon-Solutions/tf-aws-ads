# tf-aws-ads
-----

This module is for creating an AWS Directory Service.

<br />

## Terraform Version Compatibility
Module Version|Terraform Version
---|---
v3.0.0|0.12.x
v2.0.0|0.11.x

## Usage
-----

```js

module "ads" {
  source = "../modules/tf-aws-ads"

  name_prefix       = "${var.envtype}-${var.envname}"
  domain_name       = var.ad_domain_name
  domain_password   = aws_ssm_parameter.domain_admin_password.value
  ad_edition        = var.ad_edition
  ad_type           = var.ad_type
  subnet_ids        = [element(module.vpc.private_subnets,0), element(module.vpc.private_subnets,1)]

  share_ads         = true
  share_ads_targets = values(var.aws_accounts)

  tags = merge(
            local.common_tags,
            map(
              "Name", "${var.envtype}-${var.envname}-ads",
              "Service", "directory service"
            )
          )
}

```


## Variables
---------
_Variables marked with [*] are mandatory._

 - `domain_name` - the fully qualified name of the directory. [*]

 - `domain_password` - the password for the directory administrator or connector user.

 - `ad_size` - The size of AD you require, `small` or `large` are accepted values [Default: "small"]

 - `vpc_id` - The ID of the VPC you want the AD created in. [*]

 - `subnet_ids` - The two subnet ID's you want your AD created in. This would generally be two of your private subnets. [*]

 - `ad_type` - The directory type, `SimpleAD` or `MicrosoftAD` are accepted values. [Default: "SimpleAD"]

 - `ad_edition` - The MicrosoftAD edition (Standard or Enterprise). Applies to MicrosoftAD type only.

 - `share_ads` - boolean indicating whether to share AWS Directory Services [Default: "false"]

 - `share_ads_targets` - Share AWS Directory Services with target AWS accounts [Default: ""]

<br />

## Outputs
---------
 - `id` - The directory identifier.

 - `access_url` - The access URL for the directory, such as http://alias.awsapps.com.

 - `dns_ip_addresses`- A list of IP addresses of the DNS servers for the directory or connector.
