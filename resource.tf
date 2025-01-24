
resource "aws_instance" "demo-server" {
  ami             = "ami-04b4f1a9cf54c11d0"
  instance_type   = "t2.micro"
  key_name        = "vk1234"
  security_groups = ["demo-sg"]
}