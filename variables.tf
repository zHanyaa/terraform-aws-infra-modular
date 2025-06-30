variable "region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "key_name" {
  description = "Nome da chave SSH para EC2"
  type        = string
}

variable "bucket_name" {
  description = "Nome do bucket S3"
  type        = string
}

variable "user_name" {
  description = "Nome do usuário IAM"
  type        = string
}

variable "aws_region" {
  description = "Região AWS para os recursos."
  type        = string
  default     = "us-east-1"
}
