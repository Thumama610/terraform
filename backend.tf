terraform {
  backend "s3" {
    bucket         = "terraform-githubactions123"
    key            = "terraform.tfstate"
    region         = var.aws_region
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
}
