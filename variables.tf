variable "aws_region" {
  description = "AWS region"
  type        = string
}

variable "vpc_cidr" {
  description = "VPC CIDR block"
  type        = string
}

variable "public_subnet1_cidr" {
  description = "Public subnet 1 CIDR block"
  type        = string
}

variable "public_subnet2_cidr" {
  description = "Public subnet 2 CIDR block"
  type        = string
}

variable "private_subnet1_cidr" {
  description = "Private subnet 1 CIDR block"
  type        = string
}

variable "private_subnet2_cidr" {
  description = "Private subnet 2 CIDR block"
  type        = string
}

variable "az1" {
  description = "Availability Zone 1"
  type        = string
}

variable "az2" {
  description = "Availability Zone 2"
  type        = string
}


variable "Backend_ami_id" {
  description = "AMI ID for backend EC2 instance"
  type        = string
}

variable "Frontend_ami_id" {
  description = "AMI ID for frontend EC2 instance"
  type        = string
}

variable "instance_type" {
  description = "Type of the EC2 instance"
  type        = string
}

variable "key_name" {
  description = "Key pair name for SSH access"
  type        = string
}
