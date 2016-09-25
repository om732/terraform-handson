#
# SecurityGroup
# https://www.terraform.io/docs/providers/aws/r/security_group.html
#

resource "aws_security_group" "terrafom_handson_instance_sg" {
    name = "terraform_handson_instance_sg"
    description = "TerraformHandson: instance"
    vpc_id = "${aws_vpc.terraform_handson_vpc.id}"

    ingress {
        protocol    = "tcp"
        from_port   = 22
        to_port     = 22
        cidr_blocks = ["0.0.0.0/0"]
    }

    ingress {
        protocol    = "tcp"
        from_port   = 80
        to_port     = 80
        cidr_blocks = ["0.0.0.0/0"]
    }

    egress {
        protocol    = "-1"
        from_port   = 0
        to_port     = 0
        cidr_blocks = ["0.0.0.0/0"]
    }

    tags {
        Name = "terraform_handson_instance_sg"
    }
}

resource "aws_security_group" "terraform_handson_elb_sg" {
    name = "terraform_handson_elb_sg"
    description = "TerraformHandson: elb"
    vpc_id = "${aws_vpc.terraform_handson_vpc.id}"

    ingress {
        protocol    = "tcp"
        from_port   = 80
        to_port     = 80
        cidr_blocks = ["0.0.0.0/0"]
    }

    egress {
        protocol    = "-1"
        from_port   = 0
        to_port     = 0
        cidr_blocks = ["0.0.0.0/0"]
    }

    tags {
        Name = "terraform_handson_elb_sg"
    }
}
