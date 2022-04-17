resource "aws_instance" "privateinstance" {
  instance_type = "t2.micro"
  ami = var.ami # https://cloud-images.ubuntu.com/locator/ec2/ (Ubuntu)
  subnet_id = module.iti.network_private_subnet_1_id
  security_groups = [module.iti.network_private_security_group_id]
  key_name = "public-key_pair"
  disable_api_termination = false
  ebs_optimized = false
  root_block_device {
    volume_size = "10"
  }
  tags = {
    "Name" = "NEW_PrivateMachine-1"
  }
}









