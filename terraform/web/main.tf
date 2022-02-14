provider "aws" {
    region="eu-west-2"
}

variable "name" {
    type = string
    description = "Name the instance on deploy"
}

resource "aws_instance" "basic_devops_web"{
    ami = "ami-0015a39e4b7c0966f"
    instance_type = "t2.micro"
    key_name = "j4h_devops_key_pair"

    tags = {
        Name = "${var.name}"
    }

}