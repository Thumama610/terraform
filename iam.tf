resource "aws_iam_user" "github" {
  name = var.github_actions_user
}

resource "aws_iam_access_key" "github" {
  user = aws_iam_user.github.name
}

resource "aws_iam_policy" "terraform_policy" {
  name = "terraform-github-actions-policy"

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [

      # EC2 + SG
      {
        Effect = "Allow"
        Action = [
          "ec2:*",
          "elasticloadbalancing:*"
        ]
        Resource = "*"
      },

      # ECR
      {
        Effect = "Allow"
        Action = [
          "ecr:GetAuthorizationToken",
          "ecr:CreateRepository",
          "ecr:DescribeRepositories",
          "ecr:BatchCheckLayerAvailability",
          "ecr:PutImage",
          "ecr:InitiateLayerUpload",
          "ecr:UploadLayerPart",
          "ecr:CompleteLayerUpload",
          "ecr:GetDownloadUrlForLayer",
          "ecr:BatchGetImage"
        ]
        Resource = "*"
      },

      # IAM 
      {
        Effect = "Allow"
        Action = [
          "iam:CreateUser",
          "iam:CreatePolicy",
          "iam:AttachUserPolicy",
          "iam:CreateAccessKey",
          "iam:GetUser"
        ]
        Resource = "*"
      }
    ]
  })
}

resource "aws_iam_user_policy_attachment" "attach" {
  user       = aws_iam_user.github.name
  policy_arn = aws_iam_policy.terraform_policy.arn
}
