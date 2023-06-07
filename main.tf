terraform {
required_providers {
aws = {
source  = "hashicorp/aws"
version = "~> 4.16"
}
}

required_version = ">= 1.2.0"
}

provider "aws" {
region = "us-east-2"
}

# ubuntu 20.04 --> ami-0430580de6244e02e
# ubuntu 22.04 --> ami-024e6efaf93d85776
resource "aws_instance" "app_server" {
ami           = "ami-0430580de6244e02e"
instance_type = "t2.micro"

# var.instance_name
tags = {
Name = "ExampleAppServerInstance"
}
}
