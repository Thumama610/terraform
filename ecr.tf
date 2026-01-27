resource "aws_ecr_repository" "private_repo" {
  name                 = "terraform-private-ecr"
  image_tag_mutability = "MUTABLE"

  encryption_configuration {
    encryption_type = "AES256"
  }
}
