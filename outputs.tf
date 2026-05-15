output "ami_id" {
  description = "Amazon Linux 2 AMI ID selected by the data source."
  value       = data.aws_ami.amazon_linux_2.id
}

output "vpc_id" {
  description = "ID of the lab VPC."
  value       = aws_vpc.main.id
}

output "public_subnet_ids" {
  description = "IDs of the lab public subnets."
  value       = aws_subnet.public[*].id
}

output "web_security_group_id" {
  description = "ID of the web security group."
  value       = aws_security_group.web.id
}

output "app_security_group_id" {
  description = "ID of the app security group."
  value       = aws_security_group.app.id
}

output "bastion_security_group_id" {
  description = "ID of the bastion security group."
  value       = aws_security_group.bastion.id
}

output "web_instance_public_ips" {
  description = "Public IP addresses of the web servers."
  value       = aws_instance.web[*].public_ip
}

output "web_instance_public_dns" {
  description = "Public DNS names of the web servers."
  value       = aws_instance.web[*].public_dns
}

output "app_instance_private_ips" {
  description = "Private IP addresses of the app servers."
  value       = aws_instance.app[*].private_ip
}

output "app_instance_ids" {
  description = "Instance IDs of the app servers."
  value       = aws_instance.app[*].id
}
