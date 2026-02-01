data "aws_ami" "ubuntu" {
  most_recent             = true

  filter {
    name                  = "name"
    values                = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]
  }

  filter {
    name                  = "virtualization-type"
    values                = ["hvm"]
  }

  owners                  = ["099720109477"] # Canonical
}

resource "aws_instance" "terraform_ec2_instance" {
  ami                     = data.aws_ami.ubuntu.id
  instance_type           = "t3.micro"
  subnet_id               = resource.aws_subnet.main_subnet.id
  vpc_security_group_ids  = [resource.aws_security_group.sg.id]

  tags = {
    Name                  = "terraform_ec2_instance"
  }
}