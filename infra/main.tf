provider "aws" {
  region = "us-east-1"
}

// 🚨 VULNERABILITY: Security Group open to the world (catches tfsec)
resource "aws_security_group" "vulnerable_sg" {
  name        = "vulnerable_sg"
  description = "Security group for testing"

  # ingress {
  #   description = "SSH open to the world"
  #   from_port   = 22
  #   to_port     = 22
  #   protocol    = "tcp"
  #   cidr_blocks = ["0.0.0.0/0"]
  # }
}
