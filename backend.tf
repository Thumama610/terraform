terraform {
  backend "s3" {
    bucket         = "terraform-githubactions123"
    key            = "terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
}
