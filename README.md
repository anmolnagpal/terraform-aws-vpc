<p align="center"><img src="https://i.imgur.com/0On8dTw.jpg" /></p>

> Terraform module for simplified creation of VPC


## Examples

```hcl
module "vpc" {
  source    = "git::https://github.com/anmolnagpal/terraform-aws-vpc.git?ref=master"
  cidr_block                     = "10.240.0.0/16"
  instance_tenancy               = "default"
  enable_dns_hostnames           = "true"
  enable_dns_support             = "true"
  enable_classiclink             = "false"
  enable_classiclink_dns_support = "false"
  Name                           = "test-vpc"
  Environment                    = "test"
  CreatedBy                      = "terraform"
  Organization                   = "clouddrove"
}
```

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| CreatedBy | CreatedBy (e.g. `terrafrom`, `dev`, `devops`) | string | n/a | yes |
| Environment | Environment (e.g. `prod`, `dev`, `staging`) | string | n/a | yes |
| Name | Name  (e.g. `app` or `cluster`) | string | n/a | yes |
| Organization | Organisation (e.g. `clouddrove`, `cd`) | string | n/a | yes |
| cidr\_block | CIDR for the VPC | string | `""` | no |
| enable\_classiclink | A boolean flag to enable/disable ClassicLink for the VPC | string | `"false"` | no |
| enable\_classiclink\_dns\_support | A boolean flag to enable/disable ClassicLink DNS Support for the VPC | string | `"false"` | no |
| enable\_dns\_hostnames | A boolean flag to enable/disable DNS hostnames in the VPC | string | `"true"` | no |
| enable\_dns\_support | A boolean flag to enable/disable DNS support in the VPC | string | `"true"` | no |
| instance\_tenancy | A tenancy option for instances launched into the VPC | string | `"default"` | no |

## Outputs

| Name | Description |
|------|-------------|
| igw\_id | The ID of the Internet Gateway |
| ipv6\_cidr\_block | The IPv6 CIDR block |
| vpc\_cidr\_block | The CIDR block of the VPC |
| vpc\_default\_network\_acl\_id | The ID of the network ACL created by default on VPC creation |
| vpc\_default\_route\_table\_id | The ID of the route table created by default on VPC creation |
| vpc\_default\_security\_group\_id | The ID of the security group created by default on VPC creation |
| vpc\_id | The ID of the VPC |
| vpc\_ipv6\_association\_id | The association ID for the IPv6 CIDR block |
| vpc\_main\_route\_table\_id | The ID of the main route table associated with this VPC. |


- Refrence :
    - https://aws.amazon.com/vpc/
    - https://docs.aws.amazon.com/vpc/index.html

## 👬 Contribution
- Open pull request with improvements
- Discuss ideas in issues
- Reach out with any feedback [![Twitter URL](https://img.shields.io/twitter/url/https/twitter.com/anmol_nagpal.svg?style=social&label=Follow%20%40anmol_nagpal)](https://twitter.com/anmol_nagpal)

