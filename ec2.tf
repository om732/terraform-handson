#
# EC2
# https://www.terraform.io/docs/providers/aws/r/instance.html
#

resource "aws_instance" "terraform_handson_instance_a" {
    ami = "ami-374db956"
    instance_type = "t2.micro"
    key_name = "terraform"
    vpc_security_group_ids = ["${aws_security_group.terrafom_handson_instance_sg.id}"]
    subnet_id = "${aws_subnet.terraform_handson_public_subnet_a.id}"
    associate_public_ip_address = true
    root_block_device {
        volume_type = "gp2"
        volume_size = 8
    }
    tags {
        Name = "terraform_handson_instance_a"
    }
    user_data = <<EOF
#!/bin/bash
yum install nginx -y
uname -n > /usr/share/nginx/html/index.html
service nginx start
EOF
}

resource "aws_instance" "terraform_handson_instance_c" {
    ami = "ami-374db956"
    instance_type = "t2.micro"
    key_name = "terraform"
    vpc_security_group_ids = ["${aws_security_group.terrafom_handson_instance_sg.id}"]
    subnet_id = "${aws_subnet.terraform_handson_public_subnet_c.id}"
    associate_public_ip_address = true
    root_block_device {
        volume_type = "gp2"
        volume_size = 8
    }
    tags {
        Name = "terraform_handson_instance_c"
    }
    user_data = <<EOF
#!/bin/bash
yum install nginx -y
uname -n > /usr/share/nginx/html/index.html
service nginx start
EOF
}
