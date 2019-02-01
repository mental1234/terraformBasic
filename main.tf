provider "aws" {
   region = "us-east-1"
}

resource "aws_instance" "base_instance" {
   ami           = "ami-0ac019f4fcb7cb7e6"
   instance_type = "t2.micro"
   count         = 2
}

resource "aws_key_pair" "user" {
   key_name = "ramon2"
   public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDBGnDm1JzbglK4qOO9U5noHAAfA7+aMQ65Irxiyasq6RBGoB1VVCTUsXhDZMx7kjWRAOG+A07j7gFJIoaq2iEVJiz5896aLyV8lv4bw+r3Y6z0NVuOH8SryAWhy0UnyN0CfNru842e18jSWwVMB+jzEnqo2p5kpGa2DCQHgA2+I2I+tahsZZQQ/rkDRyuEwvIIhwq1g9Yyno/V1G19HwuLVjleBObcccOBOdK6Q5ZppCrIP6TY97Qj5rm+LF6R2ejkLOvTj4LHyMIOXPW08wUASsraSr0nzYoGvL05/x2Pl6oG+E6mHR2b9JrKheAMIKTNB8TV2yZDw/PAu8klE+CB rodriguez.esparza.ramon@gmail.com"
}
