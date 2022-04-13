# Default tags
variable "default_tags" {
  default = {
    "Owner" = "Group_23",
    "App"   = "Web"
  }
  type        = map(any)
  description = "Default tags to be appliad to all AWS resources"
}

# Name prefix
variable "prefix" {
  type        = string
  default     = "acs_final_project"
  description = "Name prefix"
}

# VPC CIDR range
variable "vpc_cidr" {
  default     = "10.100.0.0/16"
  type        = string
  description = "VPC to host static web site in Development Enviroment"
}

# Provision public subnets in custom VPC
variable "public_subnet_cidrs" {
  default     = ["10.100.1.0/24", "10.100.2.0/24"]
  type        = list(string)
  description = "Public Subnet CIDRs for Development Enviroment"
}

# Provision provate subnets in custom VPC
variable "private_subnet_cidr" {
  default     = ["10.100.3.0/24", "10.100.4.0/24"]
  type        = list(string)
  description = "Private Subnet CIDRs for Development Enviroment"
}



# Variable to signal the current environment 
variable "env" {
  default     = "dev"
  type        = string
  description = "Deployment Environment"
}

