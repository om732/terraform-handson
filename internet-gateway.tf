#
# Gateway
# https://www.terraform.io/docs/providers/aws/r/internet_gateway.html
#

resource "aws_internet_gateway" "terraform_handson_igw" {
    vpc_id = "${aws_vpc.terraform_handson_vpc.id}"
    tags {
        Name = "terraform_handson_igw"
    }
}
