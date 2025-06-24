output "vpc_id" {
  description = "ID of the created VPC"
  value       = aws_vpc.main.id
}

output "public_subnet_id" {
  description = "ID of the public subnet"
  value       = aws_subnet.public.id
}

output "apollo_sg_id" {
  description = "ID of the Apollo Security Group"
  value       = aws_security_group.apollo_sg.id
}
