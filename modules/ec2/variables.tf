variable "ami" {
  description = "AMI da instância EC2"
  type        = string
}

variable "instance_type" {
  description = "Tipo da instância EC2"
  type        = string
}

variable "subnet_id" {
  description = "ID da subnet para a instância EC2"
  type        = string
}

variable "key_name" {
  description = "Nome da chave SSH para EC2"
  type        = string
}

variable "sg_id" {
  description = "ID do Security Group para EC2"
  type        = string
}
