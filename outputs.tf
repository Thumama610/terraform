output "ec2_public_ip" {
  value = aws_instance.web.public_ip
}

output "ecr_url" {
  value = aws_ecr_repository.private_repo.repository_url
}

output "github_access_key" {
  value     = aws_iam_access_key.github.id
  sensitive = true
}

output "github_secret_key" {
  value     = aws_iam_access_key.github.secret
  sensitive = true
}
