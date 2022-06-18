resource "aws_vpc" "vpcprojeto7" {
  cidr_block = "172.16.0.0/16"

  tags = {
    Name = "vpcprojeto7"
  }
}

resource "aws_subnet" "subnetprojeto7" {
  vpc_id            = aws_vpc.vpcprojeto7.id
  cidr_block        = "172.16.10.0/24"
  availability_zone = "us-east-2"

  tags = {
    Name = "subnetprojeto7"
  }
}

resource "aws_network_interface" "networkprojeto7" {
  subnet_id   = aws_subnet.subnetprojeto7.id
  private_ips = ["172.16.10.100"]

  tags = {
    Name = "primary_network_interface"
  }
}

resource "aws_instance" "foo" {
  ami           = "ami-005e54dee72cc1d00" # us-west-2
  instance_type = "t2.micro"

  network_interface {
    network_interface_id = aws_network_interface.foo.id
    device_index         = 0
  }

  credit_specification {
    cpu_credits = "unlimited"
  }
}