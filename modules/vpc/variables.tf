variable "name_prefix" {
  description = "Prefixo usado no nome dos recursos."
  type        = string
}

variable "vpc_cidr" {
  description = "CIDR block da VPC."
  type        = string
}

variable "public_subnet_cidr" {
  description = "CIDR block da subnet pública."
  type        = string
}

variable "az" {
  description = "Availability Zone da subnet."
  type        = string
}
