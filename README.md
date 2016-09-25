Terraform AWS Handson
====

Setup to AWS by terraform.

## Description

Setup to;

- VPC
- Subnets
- Internet Gateway
- Route Tables
- Security Groups
- EC2
- ELB

## Setup

Write to aws.tf file your aws credentials.

aws.tf
```
provider "aws" {
    access_key = "xxxxxxxxxxxxxxxxxxxx"
    secret_key = "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
    region = "ap-northeast-1"
}
```

## Run

Check

```
$ terraform plan
```

Execute

```
$ terraform apply
```
