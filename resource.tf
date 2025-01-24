resource "aws_instance" "demo-server" {
  ami             = "ami-04b4f1a9cf54c11d0"  # Replace with your desired AMI ID
  instance_type   = "t2.micro"
  key_name        = "vk1234"  # Replace with your key name

  # Correct way to assign security group to the EC2 instance
  vpc_security_group_ids = [aws_security_group.demo-sg.id]

  subnet_id = aws_subnet.public_subnet.id  # Ensure you have the correct subnet

  tags = {
    Name = "Demo-Server"
  }
}
