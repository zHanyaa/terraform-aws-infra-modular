output "vpc_id" {
  value = module.vpc.vpc_id
}

output "subnet_id" {
  value = module.vpc.subnet_id
}

output "web_sg_id" {
  value = module.sg.web_sg_id
}

output "instance_id" {
  value = module.ec2.instance_id
}

output "public_ip" {
  value = module.ec2.public_ip
}

output "bucket_name" {
  value = module.s3.bucket_name
}

output "iam_user_name" {
  value = module.iam.user_name
}
