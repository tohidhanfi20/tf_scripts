resource "aws_instance" "terra-instance" {
  ami           = "ami-0451f2687182e0411"
  instance_type = "t2.micro"
  key_name      = ""
  count         = "1"
  user_data = <<-EOF
              #!/bin/bash
              yum update -y
              yum install -y httpd
              systemctl start httpd
              systemctl enable httpd
              EOF
  vpc_security_group_ids = [ aws_security_group.allow_all.id ]

  tags = {
    Name = "terra-instance"
  }
}
