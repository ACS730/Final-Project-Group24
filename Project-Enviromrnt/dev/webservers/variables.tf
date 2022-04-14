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

# Default tags
variable "default_tags" {
  default = {
    "Owner" = "Group_24"
    "App"   = "Web"
  }
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
  default = "0"
}

# curl http://169.254.169.254/latest/meta-data/public-ipv4
variable "my_public_ip" {
  type        = string
  default     = "3.234.221.110"
  description = "Public IP of my Cloud 9 station to be opened in bastion ingress"
}

variable "my_private_ip" {
  type        = string
  default     = "172.31.65.201"
  description = "Private IP of my Cloud 9 station to be opened in bastion ingress"
}

