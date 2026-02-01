# Terraform AWS Infrastructure (VPC + EC2 + EIP)
# 📌 Overview

This project provisions a basic but production-aligned AWS infrastructure using Terraform.
It creates a custom VPC, a public subnet, an Internet Gateway, routing, a Security Group, an EC2 instance (Ubuntu 22.04), and attaches an Elastic IP to the instance.

The setup is ideal for:

* Learning AWS networking fundamentals

* DevOps junior projects

* Running a web application or API (ports 80 / 8080)

* Terraform portfolio demonstration



# 🏗 Architecture

The infrastructure includes:

* VPC: 10.0.0.0/16

* Public Subnet: 10.0.1.0/24 (us-east-1a)

* Internet Gateway attached to the VPC

* Route Table routing 0.0.0.0/0 to the IGW

* Security Group allowing:

SSH (22)
HTTP (80)
Custom App Port (8080)

* EC2 Instance

* Ubuntu 22.04 (latest)

* Instance type: t3.micro

* Elastic IP attached to the EC2 instance



# 📋 Prerequisites

Make sure you have the following installed and configured:

* Terraform

* AWS Account

* AWS CLI configured

* IAM user with sufficient permissions (EC2, VPC, EIP, IGW)



# 🚀 How to Use

1️⃣ Initialize Terraform =>
terraform init

2️⃣ Validate Configuration =>
terraform validate

3️⃣ Preview Infrastructure Changes =>
terraform plan

4️⃣ Apply Infrastructure =>
terraform apply


Type "yes" when prompted.

5️⃣ Destroy Infrastructure =>
terraform destroy



# 📦 AMI Selection

The EC2 instance dynamically fetches the latest Ubuntu 22.04 LTS AMI from Canonical using a data source:

Owner: Canonical

Virtualization: HVM

Architecture: amd64

This ensures the instance always uses an up-to-date image.



# 📎 Author

Thumama Alrawwad
