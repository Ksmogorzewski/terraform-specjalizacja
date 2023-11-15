module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"

  name = "test-ec2-1"

  instance_type          = "t2.micro"
  key_name               = "user1"
  monitoring             = true
  vpc_security_group_ids = var.security_group_id
  subnet_id              = var.subnet_id
}