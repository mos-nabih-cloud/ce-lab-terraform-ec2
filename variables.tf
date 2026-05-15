variable "aws_region" {
  description = "AWS region to deploy resources into."
  type        = string
  default     = "us-east-1"
}

variable "project_name" {
  description = "Project name used for resource naming."
  type        = string
  default     = "ce-lab-terraform-ec2"
}

variable "vpc_cidr_block" {
  description = "CIDR block for the lab VPC."
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidr_blocks" {
  description = "CIDR blocks for public subnets in the lab VPC."
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "key_name" {
  description = "Existing EC2 key pair name for SSH access."
  type        = string
}

variable "ssh_ip_cidr" {
  description = "Trusted public IP CIDR allowed to SSH to web and bastion security groups."
  type        = string
}

variable "web_instance_count" {
  description = "Number of web instances to create."
  type        = number
  default     = 2
}

variable "app_instance_count" {
  description = "Number of app instances to create."
  type        = number
  default     = 2
}

variable "web_instance_type" {
  description = "EC2 instance type for web servers."
  type        = string
  default     = "t3.micro"
}

variable "app_instance_type" {
  description = "EC2 instance type for app servers."
  type        = string
  default     = "t3.micro"
}
