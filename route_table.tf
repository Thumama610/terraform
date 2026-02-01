resource "aws_route_table" "terraform_rt" {
  vpc_id                  = resource.aws_vpc.main_vpc.id

  route {
    cidr_block            = "0.0.0.0/0"
    gateway_id            = resource.aws_internet_gateway.gw.id
  }

  tags = {
    Name                  = "terraform_rt"
  }
}

resource "aws_route_table_association" "terraform_rt_association" {
  subnet_id               = resource.aws_subnet.main_subnet.id
  route_table_id          = resource.aws_route_table.terraform_rt.id
}