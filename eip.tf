resource "aws_eip" "eip" {
  instance                = resource.aws_instance.terraform_ec2_instance.id
}