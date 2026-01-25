resource "aws_instance" "ec2" {
  ami           = "ami-0b6c6ebed2801a5cb" # ubuntu 24.04 (us-east-1)
  instance_type = var.instance_type

  tags = {
    Name = "EC2-from-GitHub-Actions"
  }
}

resource "aws_instance" "ec2" {
  ami           = "ami-0b6c6ebed2801a5cb" # ubuntu 24.04 (us-east-1)
  instance_type = var.instance_type

  tags = {
    Name = "another one"
  }
}
