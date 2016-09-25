#
# RouteTable
# https://www.terraform.io/docs/providers/aws/r/route_table.html
#


### public subnet
resource "aws_route_table" "terraform_handson_public_rt" {
    vpc_id = "${aws_vpc.terraform_handson_vpc.id}"
    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = "${aws_internet_gateway.terraform_handson_igw.id}"
    }
    tags {
        Name = "terraform_handson_public_rt"
    }
}

resource "aws_route_table_association" "terraform_handson_public_rtassoc_a" {
    subnet_id = "${aws_subnet.terraform_handson_public_subnet_a.id}"
    route_table_id = "${aws_route_table.terraform_handson_public_rt.id}"
}

resource "aws_route_table_association" "terraform_handson_public_rtassoc_c" {
    subnet_id = "${aws_subnet.terraform_handson_public_subnet_c.id}"
    route_table_id = "${aws_route_table.terraform_handson_public_rt.id}"
}

