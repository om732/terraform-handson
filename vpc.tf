#
# VPC
# https://www.terraform.io/docs/providers/aws/r/vpc.html
#

resource "aws_vpc" "terraform_handson_vpc" {
    cidr_block = "10.100.0.0/16"
    tags {
        Name = "terraform_handson_vpc"
    }
}
