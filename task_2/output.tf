output "public_ip" {
  value = aws_instance.terra-newinstance[0].public_ip 
}
