variable "region" {
  default = "us-east-2"
  type = string
}

variable "ami_id" {
    type = string
}

variable "instance_type" {
    default = "t2.micro"
    type = string
}

variable "vpc_name" {
  type = string
}

variable "sn_name" {
  type = string
}

variable "cidr_block_vpc" {
  type = string
}

variable "cidr_block_sn" {
  type = string
}

variable "webserver_name" {
  type = string
}
