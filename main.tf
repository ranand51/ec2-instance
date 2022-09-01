provider "aws" {
 region = "eu-west-2"
  access_key = var.access_key
  secret_key = var.secret_key
}

resource "aws_instance" "Bootcamp_Instance1" {
  ami = "ami-0cf60952ecf2ac047"
  instance_type = "t2.micro"
  subnet_id = "subnet-09e32b58b0c6a0a5f"
  associate_public_ip_address = "false"
  vpc_security_group_ids = [ "sg-04caa8ec7cd997cfd" ]
  tags = {
    "Name" = "Bootcamp_vm1"
  }
}
