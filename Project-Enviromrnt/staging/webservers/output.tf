# output variables

output "bastion_public_ip" {
  value = aws_instance.bastion.public_ip
}

output "For_private_ip" {
  value = aws_instance.webserver.*.private_ip
}