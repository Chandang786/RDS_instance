variable "accesskey"{
}

variable "secret_key"{
}

resource "aws_security_group" "RDS_MYSQL" {
  name        = var.name
  description = var.description



  dynamic "ingress" {
    for_each = var.RDS_port
    content {
      from_port   = ingress.value
      to_port     = ingress.value
      protocol    = var.protocol_ingress
      cidr_blocks = [var.cidr_blocks]
    }
  }
  egress {
    from_port   = var.from_port
    to_port     = var.to_port
    protocol    = var.protocol_egress
    cidr_blocks = [var.egress_cidr_blocks]
  }

  tags = var.tags
}
