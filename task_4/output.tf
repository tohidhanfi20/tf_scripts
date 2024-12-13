output "public_ip" {
  value = aws_instance.terra-instance[0].public_ip
}
