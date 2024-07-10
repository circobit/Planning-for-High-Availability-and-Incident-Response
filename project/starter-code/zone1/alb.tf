module "project_alb" {
   source             = "./modules/alb"
   name               = local.name
   zone               = "zone-1"
   account            = data.aws_caller_identity.current.account_id
   ec2_instances      = module.project_ec2.aws_instance
   private_subnet_ids = module.vpc.private_subnet_ids
   public_subnet_ids  = module.vpc.public_subnet_ids
   vpc_id             = module.vpc.vpc_id
}
