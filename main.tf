# Configure the AWS Provider
provider "aws" {
  profile = "default"
  region  = "us-east-2"
}

resource "aws_instance" "web" {
  ami           = "ami-0a54aef4ef3b5f881"
  instance_type = "t2.micro"
}