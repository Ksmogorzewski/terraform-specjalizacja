resource "aws_instance" "ec2" {
  ami = "ami-0669b163befffbdfc"
  instance_type = "t2.micro"
  subnet_id = var.subnet_id
  security_groups = var.security_group_id
  tags = {
    Name = "TestEC2"
  }
}