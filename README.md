


## Examples

```hcl
module "vpc" {
  source    = "git::https://github.com/anmolnagpal/terraform-aws-vpc.git?ref=master"
  namespace = "cp"
  stage     = "prod"
  name      = "app"
}
```

Full example with [`terraform-aws-dynamic-subnets`](https://github.com/anmolnagpal/terraform-aws-dynamic-subnets.git):

```hcl
module "vpc" {
  source    = "git::https://github.com/anmolnagpal/terraform-aws-vpc.git?ref=master"
  namespace = "cp"
  stage     = "prod"
  name      = "app"
}

module "dynamic_subnets" {
  source             = "git::https://github.com/anmolnagpal/terraform-aws-dynamic-subnets.git?ref=master"
  namespace          = "cp"
  stage              = "prod"
  name               = "app"
  region             = "us-west-2"
  availability_zones = ["us-west-2a","us-west-2b","us-west-2c"]
  vpc_id             = "${module.vpc.vpc_id}"
  igw_id             = "${module.vpc.igw_id}"
  cidr_block         = "10.0.0.0/16"
}
```



## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| attributes | Additional attributes (e.g. `1`) | list | `<list>` | no |
| cidr_block | CIDR for the VPC | string | `10.0.0.0/16` | no |
| delimiter | Delimiter to be used between `namespace`, `stage`, `name` and `attributes` | string | `-` | no |
| enable_classiclink | A boolean flag to enable/disable ClassicLink for the VPC | string | `false` | no |
| enable_classiclink_dns_support | A boolean flag to enable/disable ClassicLink DNS Support for the VPC | string | `false` | no |
| enable_dns_hostnames | A boolean flag to enable/disable DNS hostnames in the VPC | string | `true` | no |
| enable_dns_support | A boolean flag to enable/disable DNS support in the VPC | string | `true` | no |
| instance_tenancy | A tenancy option for instances launched into the VPC | string | `default` | no |
| name | Name  (e.g. `app` or `cluster`) | string | - | yes |
| namespace | Namespace (e.g. `cp` or `anmolnagpal`) | string | - | yes |
| stage | Stage (e.g. `prod`, `dev`, `staging`) | string | - | yes |
| tags | Additional tags (e.g. map(`BusinessUnit`,`XYZ`) | map | `<map>` | no |

## Outputs

| Name | Description |
|------|-------------|
| igw_id | The ID of the Internet Gateway |
| ipv6_cidr_block | The IPv6 CIDR block |
| vpc_cidr_block | The CIDR block of the VPC |
| vpc_default_network_acl_id | The ID of the network ACL created by default on VPC creation |
| vpc_default_route_table_id | The ID of the route table created by default on VPC creation |
| vpc_default_security_group_id | The ID of the security group created by default on VPC creation |
| vpc_id | The ID of the VPC |
| vpc_ipv6_association_id | The association ID for the IPv6 CIDR block |
| vpc_main_route_table_id | The ID of the main route table associated with this VPC. |
