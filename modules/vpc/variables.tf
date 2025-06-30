variable "vpc_cidr" {
  description = "CIDR block da VPC"
  type        = string
}

variable "subnet_cidr" {
  description = "CIDR block da Subnet"
  type        = string
}

variable "az" {
  description = "Availability Zone da Subnet"
  type        = string
}
