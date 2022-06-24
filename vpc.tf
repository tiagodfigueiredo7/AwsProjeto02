resource "aws_vpc" "vpctiago7" {
  cidr_block = "172.16.0.0/16"

  tags = {
    Name = "vpcptiago7"
  }
}

