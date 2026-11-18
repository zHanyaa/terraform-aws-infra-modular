variable "name_prefix" {
  description = "Prefixo usado no nome dos recursos."
  type        = string
}

variable "vpc_id" {
  description = "ID da VPC do Security Group."
  type        = string
}

variable "allowed_http_cidrs" {
  description = "CIDRs liberados na porta 80."
  type        = list(string)
  default     = []
}
