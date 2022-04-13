output "pass" {

  value     = aws_db_instance.test_db.password
  sensitive = true
}