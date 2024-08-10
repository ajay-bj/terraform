resource "aws_db_instance" "default" {
  allocated_storage    = 5
  storage_type         = "gp2"
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = "db.t2.micro"
  identifier           = "mydb"  # Use 'identifier' instead of 'name'
  username             = "foo"
  password             = file("../rds_pass.txt")
  parameter_group_name = "default.mysql5.7"
  skip_final_snapshot  = true  # Use boolean value, not a string
}
