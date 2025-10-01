variable "region" {
  type        = string
  description = "AWS region"
  default     = "us-west-1"
}

variable "ami" {
  type        = string
  description = "AMI ID"
  default     = "ami-00142eb1747a493d9"
}

variable "instance_type" {
  type        = string
  description = "EC2 instance type"
  default     = "t3.micro"
}

variable "prefix" {
  type        = string
  description = "Resource prefix"
  default     = "mgr"
}

variable "my_ip" {
  type        = string
  description = "Your public IP with CIDR"
  default     = "189.203.100.59/32"
}

variable "availability_zone" {
  type        = string
  description = "Availability zone for the instance"
  default     = "us-west-1a"
}

variable "vpc_id" {
  type        = string
  description = "VPC ID to launch into (default VPC if not specified)"
  default     = "" # you can override with terraform.tfvars if needed
}
