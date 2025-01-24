# Create a Security Group
resource "aws_security_group" "demo-sg" {
  name        = "demo-sg"
  description = "Allow inbound HTTP, HTTPS, and SSH traffic"
  vpc_id      = "vpc-048339d7159381e62" # Replace with your VPC ID

  # Inbound rules
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] # Replace with your specific IP or CIDR block for SSH
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] # Allow HTTP from anywhere
  }

  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] # Allow HTTPS from anywhere
  }

  # Outbound rules
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1" # Allow all outbound traffic
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    Name = "allow_tls"
  }
}
