locals {
  rds_identifier = "test-rds-iam-auth"
  rds_family     = "mysql8.0"
  rds_engine     = "mysql"
  rds_version    = "8.0.17"

  tags = {
    "Environment" = "test"
  }
}

resource "aws_db_parameter_group" "test-parameters" {
  description = "Test RDS for IAM authentication"
  name        = local.rds_identifier
  family      = local.rds_family

  parameter {
    name  = "character_set_database"
    value = "utf8mb4"
  }

  parameter {
    name  = "character_set_server"
    value = "utf8mb4"
  }
}

resource "aws_db_instance" "test-rds-iam-auth" {
  identifier            = local.rds_identifier
  engine                = local.rds_engine
  engine_version        = local.rds_version
  instance_class        = "db.t2.micro"
  allocated_storage     = 20
  max_allocated_storage = 25
  storage_type          = "gp2"

  username = "admin_kanata"
  multi_az                   = false
  publicly_accessible        = true
  auto_minor_version_upgrade = false
  deletion_protection        = false
  skip_final_snapshot        = true
  port                       = 3306
  apply_immediately          = true
  availability_zone          = "ap-northeast-1c"
  db_subnet_group_name       = "default"
  security_group_names       = []
  vpc_security_group_ids = [
    "sg-090db57d",
  ]
  parameter_group_name = aws_db_parameter_group.test-parameters.name

  iam_database_authentication_enabled = true
  ca_cert_identifier                  = "rds-ca-2019"

  lifecycle {
    ignore_changes = [password]
  }

  tags = local.tags
}
