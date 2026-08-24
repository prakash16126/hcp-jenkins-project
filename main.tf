provider "aws" {
region = "us-east-1"
}

resource "aws_instance" "one" {
count = 0
ami = "ami-0b6d9d3d33ba97d99"
instance_type = "c7i.xlarge"
key_name = "mykeypair"
vpc_security_group_ids = ["sg-0ecaecbf03be6183e"]
tags = {
Name = var.instance_names[count.index]
}
}

variable "instance_names" {
default = ["jenkins", "APP SERVER", "Monitoring server"]
}

