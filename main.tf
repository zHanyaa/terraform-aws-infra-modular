module "vpc" {
  source     = "./modules/vpc"
  vpc_cidr   = "10.0.0.0/16"
  subnet_cidr = "10.0.1.0/24"
  az         = "us-east-1a"
}

module "sg" {
  source  = "./modules/security_group"
  vpc_id  = module.vpc.vpc_id
}

module "ec2" {
  source         = "./modules/ec2"
  ami            = "ami-0c55b159cbfafe1f0"
  instance_type  = "t2.micro"
  subnet_id      = module.vpc.subnet_id
  key_name       = var.key_name
  sg_id          = module.sg.web_sg_id
}

module "s3" {
  source      = "./modules/s3"
  bucket_name = var.bucket_name
}

module "iam" {
  source    = "./modules/iam"
  user_name = var.user_name
}
