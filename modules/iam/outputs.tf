output "role_name" {
  description = "Nome da role IAM da instância."
  value       = aws_iam_role.ec2.name
}

output "instance_profile_name" {
  description = "Nome do instance profile."
  value       = aws_iam_instance_profile.ec2.name
}
