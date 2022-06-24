#criando uma rede privada 
resource "aws_subnet" "sub_tiago" {
  vpc_id            = aws_vpc.vpc_tiago.id
  cidr_block        = "192.168.1.0/24"
  availability_zone = "us-east-2b"
  tags = {
    Name = "subnet_tiago"
  }
}


