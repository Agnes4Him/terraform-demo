provider "aws" {
    region = "us-east-1"
}

variable vpc_cidr_block {
  type        = string
  default     = ""
  description = "vpc cidr block"
}
variable subnet_cidr_block {
  type        = string
  default     = ""
  description = "vpc cidr block"
}
variable subnet_avail_zone {}
variable env_prefix {}

resource "aws_vpc" "my_de_vpc" {
    cidr_block = var.vpc_cidr_block
    tags = {
      Name: "${var.env_prefix}-vpc"
    }
}

resource "aws_subnet" "my_de_subnet" {
    vpc_id = aws_vpc.my_de_vpc.id
    cidr_block = var.subnet_cidr_block
    availability_zone = var.subnet_avail_zone
    tags = {
      Name: "${var.env_prefix}-subnet"
    }
}
