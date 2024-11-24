terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }
  required_version = ">= 1.2.0"
}

## Define varibales access, secret and region
variable "aws_access_key" {
  sensitive = true
}
variable "aws_secret_key" {
  sensitive = true
}
variable "aws_region" {
  sensitive = true
}

## Complete provider
provider "aws" {
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
  region     = var.aws_region
}
## resource EC2 config
resource "aws_instance" "this_ec2" {
  ami           = "ami-0453ec754f44f9a4a"
  instance_type = "t2.micro"
  tags = {
    Name = "test-server"
  }
  key_name = "dev-amad"
}
