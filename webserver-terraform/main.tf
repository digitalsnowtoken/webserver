resource "aws_vpc" "ws-vpc-dev2" {
    cidr_block = "${var.cidr_block_vpc}"

    tags = {
        Name = "${var.vpc_name}"
    }
}

resource "aws_subnet" "ws-sn-dev2" {
    vpc_id = aws_vpc.ws-vpc-dev2.id
    cidr_block = "${var.cidr_block_sn}"

    tags = {
        Name = "${var.sn_name}"
    }
}

resource "aws_instance" "ws-webserver-dev2" {
    ami = "${var.ami_id}"
    instance_type = "${var.instance_type}"
    subnet_id = aws_subnet.ws-sn-dev2.id

    tags = {
        Name = "${var.webserver_name}"
    }
}