output "db_instance_password" {
  value     = module.mysqlrds.pass
  sensitive = true
}