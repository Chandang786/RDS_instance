variable "RDS_port" {
  type    = list(any)
  default = [443, 3306, 80]
}

variable "name" {
  type = string
}

variable "description" {
  type    = string
  default = "Allow TLS inbound traffic"
}

variable "protocol_ingress" {
  default = "TCP"
}

variable "cidr_blocks" {
  type    = string
  default = "0.0.0.0/24"
}

variable "from_port" {
  type    = string
  default = 0
}

variable "to_port" {
  type    = string
  default = 0
}

variable "protocol_egress" {
  type    = string
  default = "-1"
}

variable "egress_cidr_blocks" {
  type    = string
  default = "0.0.0.0/0"
}



variable "tags" {
  description = "Tags that are added to resource"
  type        = map(string)
  default     = { type = "RDS" }
}