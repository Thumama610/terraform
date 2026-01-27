variable "aws_region" {
  default = "us-east-1"
}

variable "key_name" {
  description = "SSH key pair name"
  type        = string
}

variable "github_actions_user" {
  default = "github-actions-terraform"
}
