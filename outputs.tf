output "vpc_id" {
  description = "ID da VPC."
  value       = module.vpc.vpc_id
}

output "public_subnet_id" {
  description = "ID da subnet pública."
  value       = module.vpc.public_subnet_id
}

output "web_sg_id" {
  description = "ID do Security Group da instância."
  value       = module.sg.web_sg_id
}

output "instance_id" {
  description = "ID da instância EC2."
  value       = module.ec2.instance_id
}

output "public_ip" {
  description = "IP público da instância EC2."
  value       = module.ec2.public_ip
}

output "ssm_session_command" {
  description = "Comando para abrir um terminal na instância via SSM (sem SSH)."
  value       = "aws ssm start-session --target ${module.ec2.instance_id} --region ${var.aws_region}"
}

output "bucket_name" {
  description = "Nome do bucket S3."
  value       = module.s3.bucket_name
}

output "instance_role_name" {
  description = "Role IAM associada à instância."
  value       = module.iam.role_name
}
