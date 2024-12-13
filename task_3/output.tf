output "public_ip_instance1" {
  value = aws_instance.instance1[0].public_ip
}

output "public_ip_instance2" {
  value = aws_instance.instance2[0].public_ip
}
