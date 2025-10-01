variable "instance_type" {
    description = "Type of EC2 instance"
    type = string
  
}
variable "ami" {
  description = "AMI id for EC2 instance"
  type = string
}
variable "region" {
  description = "AWS region"
  type = string
}
variable "availability_zone" {
    description = "The Availability Zone to launch resources i"
    type = string
}
variable "prefix" {
  description = "Prefix that will be reused for naming resources"
  type = string
}

variable "my_ip" {
  description = "Public IP address with CIDR"
  type        = string
}

variable "vpc_id" {
  description = "The VPC ID where the instance will be launched"
  type = string
}