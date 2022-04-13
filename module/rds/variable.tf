variable "db_name" {
  type    = string
  default = "myDB"
}

variable "engine" {
  type    = string
  default = "mysql"
}

variable "engine_version" {
  type    = string
  default = "5.7"
}

variable "instance_class" {
  type    = string
  default = "db.t3.micro"
}
variable "password" {
  type = string
}

variable "parameter_group_name" {
  type    = string
  default = "default.mysql5.7"
}

variable "skip_final_snapshot" {
  type    = string
  default = "true"
}

variable "allocated_storage" {
  type    = number
  default = 10
}

variable "user_name" {
  default = "admin"
}

variable "security_group_id" {
  default = "default"
}

variable "vpc_security_group_ids" {
  default = "Default"
}