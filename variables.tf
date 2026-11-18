variable "aws_region" {
  description = "Região AWS onde os recursos serão criados."
  type        = string
  default     = "us-east-1"
}

variable "project_name" {
  description = "Nome do projeto, usado como prefixo nos recursos."
  type        = string
  default     = "infra-modular"
}

variable "environment" {
  description = "Ambiente (dev, staging, prod)."
  type        = string
  default     = "dev"
}

variable "vpc_cidr" {
  description = "CIDR da VPC."
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidr" {
  description = "CIDR da subnet pública."
  type        = string
  default     = "10.0.1.0/24"
}

variable "instance_type" {
  description = "Tipo da instância EC2."
  type        = string
  default     = "t3.micro"
}

variable "allowed_http_cidrs" {
  description = "Lista de CIDRs liberados na porta 80. Vazio = nenhum acesso HTTP externo."
  type        = list(string)
  default     = []
}

variable "bucket_name" {
  description = "Nome do bucket S3 (único globalmente)."
  type        = string
}

variable "bucket_force_destroy" {
  description = "Permite destruir o bucket mesmo com objetos. Útil em estudo; mantenha false em ambientes reais."
  type        = bool
  default     = false
}
