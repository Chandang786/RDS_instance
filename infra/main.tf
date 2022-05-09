
module "securitygroups" {
  source      = "Chandang786/RDS_instance/module/security_group"
  name        = var.sg_name
  description = var.sg_description
}


module "mysqlrds" {
  
  source                 = "Chandang786/RDS_instance/module/rds"
  db_name                = var.db_name
  user_name              = var.user_name
  allocated_storage      = var.allocated_storage
  vpc_security_group_ids = module.securitygroups.security_group_id
  password               = var.password
  depends_on = [module.securitygroups]
}









