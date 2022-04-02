resource "aws_vpc" "ws-vpc-dev2" {
    cidr_block = "192.168.1.0/27"

    tags = {
        Name = "ws-vpc-dev2"
    }
}

resource "aws_subnet" "ws-sn-dev2" {
    vpc_id = aws_vpc.ws-vpc-dev2.id
    cidr_block = "192.168.1.0/28"

    tags = {
        Name = "ws-sn-dev2"
    }
}

resource "aws_instance" "webserver" {
    ami = "${var.ami_id}"
    instance_type = "${var.instance_type}"
    subnet_id = aws_subnet.ws-sn-dev2

    tags = {
        Name = "webserver"
    }
}