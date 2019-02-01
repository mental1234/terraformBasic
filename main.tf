provider "aws" {
   region = "us-east-1"
}

resource "aws_instance" "base_instance" {
   ami           = "ami-0ac019f4fcb7cb7e6"
   instance_type = "t2.micro"
   count         = 2
}

resource "aws_key_pair" "user" {
   key_name = "ramon"
   public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDBGnDm1JzbglK4qOO9U5noHA$"
}
