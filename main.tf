locals {
  name_prefix = "${var.project_name}-${var.environment}"
}

data "aws_availability_zones" "available" {
  state = "available"
}

module "vpc" {
  source = "./modules/vpc"

  name_prefix        = local.name_prefix
  vpc_cidr           = var.vpc_cidr
  public_subnet_cidr = var.public_subnet_cidr
  az                 = data.aws_availability_zones.available.names[0]
}

module "sg" {
  source = "./modules/security_group"

  name_prefix        = local.name_prefix
  vpc_id             = module.vpc.vpc_id
  allowed_http_cidrs = var.allowed_http_cidrs
}

module "iam" {
  source = "./modules/iam"

  name_prefix = local.name_prefix
}

module "ec2" {
  source = "./modules/ec2"

  name_prefix           = local.name_prefix
  instance_type         = var.instance_type
  subnet_id             = module.vpc.public_subnet_id
  sg_id                 = module.sg.web_sg_id
  instance_profile_name = module.iam.instance_profile_name
}

module "s3" {
  source = "./modules/s3"

  bucket_name   = var.bucket_name
  force_destroy = var.bucket_force_destroy
}
