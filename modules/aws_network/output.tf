# Add output variables

#Print public subnet
output "public_subnet_ids" {
  value = aws_subnet.public_subnet[*].id  
}

#Print private subnet
output "private_subnet_id" {
  value = aws_subnet.private_subnet[*].id
}

# VPC id
output "vpc_id" {
  value = aws_vpc.main.id
}

output "route_table_id" {
  value = aws_route_table.public_route_table.id
}