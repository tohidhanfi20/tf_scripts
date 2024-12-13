provider "aws" {
  region = "ap-south-1"
  access_key = ""
  secret_key = ""
}

resource "aws_instance" "terra-instance" {
  ami = "ami-0451f2687182e0411"
  instance_type = "t2.micro"
  key_name = ""
  count = "1"
  tags = {
   Name="terra-instance" 
  }
}
