resource "aws_subnet" "subnet1-public" {
  vpc_id            = aws_vpc.myvpc.id
  cidr_block        = var.public_subnet1_cidr
  availability_zone = "us-east-1a"
  tags = {
    Name  = "${var.public_subnet1_name}"
    Owner = "dilly"
  }
  depends_on = [
    aws_flow_log.vpcflowlog,
    aws_internet_gateway.myvpcgw,
  ]
}


resource "aws_subnet" "subnet2-public" {
  vpc_id            = aws_vpc.myvpc.id
  cidr_block        = var.public_subnet2_cidr
  availability_zone = "us-east-1b"
  tags = {
    Name  = "${var.public_subnet2_name}"
    Owner = "dilly"
  }

  depends_on = [
    aws_flow_log.vpcflowlog,
    aws_subnet.subnet1-public,
  ]
}
