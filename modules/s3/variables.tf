variable "bucket_name" {
  description = "Nome do bucket S3."
  type        = string
}

variable "force_destroy" {
  description = "Permite apagar o bucket com objetos dentro."
  type        = bool
  default     = false
}
