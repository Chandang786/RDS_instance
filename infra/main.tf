
module "securitygroups" {
  source      = "../module/security_group"
  name        = var.sg_name
  description = var.sg_description
}

variable "accesskey"{
}
variable "secret_key"{
}  
  
module "mysqlrds" {
  source                 = "../module/rds"
  db_name                = var.db_name
  user_name              = var.user_name
  allocated_storage      = var.allocated_storage
  vpc_security_group_ids = module.securitygroups.security_group_id
  password               = var.password
  depends_on = [module.securitygroups]
}









