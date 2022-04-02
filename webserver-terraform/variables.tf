variable "ami_id" {
    type = string
}

variable "instance_type" {
    default = "t2.micro"
    type = string
}

variable "vpc" {
  type = string
}

variable "subnet" {
  type = string
}

variable "cidr_block_vpc" {
  type = string
}

variable "cidr_block_sn" {
  type = string
}
