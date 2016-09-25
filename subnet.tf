#
# Subnet
# https://www.terraform.io/docs/providers/aws/r/subnet.html
#

### public A Zone
resource "aws_subnet" "terraform_handson_public_subnet_a" {
    vpc_id = "${aws_vpc.terraform_handson_vpc.id}"
    availability_zone = "ap-northeast-1a"
    cidr_block = "10.100.1.0/24"
    tags {
        Name = "terraform_handson_subnet_a"
    }
}

### public C Zone
resource "aws_subnet" "terraform_handson_public_subnet_c" {
    vpc_id = "${aws_vpc.terraform_handson_vpc.id}"
    availability_zone = "ap-northeast-1c"
    cidr_block = "10.100.2.0/24"
    tags {
        Name = "terraform_handson_subnet_c"
    }
}
