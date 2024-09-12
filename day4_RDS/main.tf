resource "aws_db_instance" "rds" {
  allocated_storage    = 10
  db_name              = "mydb"
  engine               = "mysql"
  engine_version       = "8.0.35"
  instance_class       = "db.t3.micro"
  username             = "hanamant"
  password             = ""
  parameter_group_name = "default.mysql8.0"
  skip_final_snapshot  = true
}
