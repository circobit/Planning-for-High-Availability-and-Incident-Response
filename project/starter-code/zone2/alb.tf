module "project_alb" {
   source             = "./modules/alb"
   name               = local.name
   zone               = "zone-2"
   account            = data.aws_caller_identity.current.account_id
   ec2_instances      = module.project_ec2.aws_instance
   private_subnet_ids = data.terraform_remote_state.vpc.outputs.vpc_west_private_subnet_ids
   public_subnet_ids  = data.terraform_remote_state.vpc.outputs.vpc_west_public_subnet_ids
   vpc_id             = data.terraform_remote_state.vpc.outputs.vpc_west_id
}
