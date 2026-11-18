variable "name_prefix" {
  description = "Prefixo usado no nome dos recursos."
  type        = string
}

variable "instance_type" {
  description = "Tipo da instância EC2."
  type        = string
}

variable "subnet_id" {
  description = "ID da subnet da instância."
  type        = string
}

variable "sg_id" {
  description = "ID do Security Group da instância."
  type        = string
}

variable "instance_profile_name" {
  description = "Instance profile IAM associado à instância."
  type        = string
}
