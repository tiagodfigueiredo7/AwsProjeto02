resource "aws_vpc" "vpc_tiago" {
  cidr_block = "192.168.0.0/16"

  tags = {
    Name = "vpc_tiago"
  }
}

