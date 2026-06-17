# Terraform AWS Infrastructure Module

This Terraform module creates:

- VPC
- Public & Private Subnets
- Internet Gateway
- NAT Gateway
- Route Tables
- Security Groups
- Bastion Host
- Application Server

## Usage

```hcl
module "aws_infra" {
  source = "github.com/sohilahussiensayed-bit/terraform-aws-infra"

  vpc_cidr           = "10.0.0.0/16"
  public_subnet_cidr = "10.0.1.0/24"
  private_subnet_cidr = "10.0.3.0/24"
}
```
