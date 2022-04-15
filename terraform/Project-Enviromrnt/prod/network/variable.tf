# Default tags
variable "default_tags" {
  default = {
    "Owner" = "Group24"
    "App"   = "Web"
  }
}

# Prefix to identify resources
variable "prefix" {
  type    = string
  default = "Group24"
}

# VPC CIDR range
variable "vpc_cidr" {
  default     ="10.40.0.0/16"
  type        = string
  description = "prod VPC "
}

# Provision public subnets in prod VPC
variable "public_cidr_blocks" {
  default     = ["10.40.11.0/24","10.40.12.0/24","10.40.13.0/24"]
  type        = list(string)
  description = "Public Subnet CIDRs for prod"
}


# Provision private subnets in prod VPC
variable "private_cidr_blocks" {
  default     = ["10.40.14.0/24","10.40.15.0/24","10.40.16.0/24"]
  type        = list(string)
  description = "Private Subnet CIDRs for prod"
}

# Variable to signal the current environment 
variable "env" {
  default     = "Prod"
  type        = string
  description = "Production Environment"
}

