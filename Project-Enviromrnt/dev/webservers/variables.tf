# Instance type
variable "instance_type" {
  default = {
    "prod"    = "t3.medium"
    "staging" = "t3.small"
    "dev"     = "t3.micro"
  }
  description = "Type of the instance"
  type        = map(string)
}

# Variable to signal the current environment 
variable "env" {
  default     = "dev"
  type        = string
  description = "Deployment Environment"
}

# Prefix to identify resources
variable "prefix" {
  type    = string
  default = "acs_final_project"
}

variable "ec2_count" {
  type    = number
  default = "2"
}

# curl http://169.254.169.254/latest/meta-data/public-ipv4
variable "my_public_ip" {
  type        = string
  default     = "18.208.149.217"
  description = "Public IP of my Cloud 9 station to be opened in bastion ingress"
}

variable "my_private_ip" {
  type        = string
  default     = "172.31.86.50"
  description = "Private IP of my Cloud 9 station to be opened in bastion ingress"
}

