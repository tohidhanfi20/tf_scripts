
resource "aws_security_group" "allow_all" {
  name        = "allow_all_traffic"
  description = "Security group will allows all inbound and outbound traffic"

  
  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"  # -1 means all protocols
    cidr_blocks  = ["0.0.0.0/0"]  # Allow from anywhere
  }

  
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"  # -1 means all protocols
    cidr_blocks  = ["0.0.0.0/0"]  # Allow to anywhere
  }
}

