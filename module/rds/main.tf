resource "aws_db_instance" "test_db" {
  allocated_storage      = var.allocated_storage
  engine                 = var.engine
  engine_version         = var.engine_version
  instance_class         = var.instance_class
  db_name                = var.db_name
  username               = var.user_name
  password               = var.password
  parameter_group_name   = var.parameter_group_name
  skip_final_snapshot    = var.skip_final_snapshot
  vpc_security_group_ids = [var.vpc_security_group_ids]
}



