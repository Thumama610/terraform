resource "aws_internet_gateway" "gw" {
  vpc_id                  = resource.aws_vpc.main_vpc.id

  tags = {
    Name                  = "terraform_gw"
  }
}