resource "aws_instance" "instance1"{
  ami           = "ami-0451f2687182e0411"
  instance_type = "t2.micro"
  key_name      = ""
  count         = "1"
  tags = {
    Name = "terra-instance1"
  }
}
resource "aws_instance" "instance2"{
  ami           = "ami-0451f2687182e0411"
  instance_type = "t2.micro"
  key_name      = ""
  count         = "1"
  tags = {
    Name = "terra-instance2"
  }
}
