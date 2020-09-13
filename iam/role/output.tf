output "roles" {
  value = {
    (aws_iam_role.lambda-role-for-rds.name) = aws_iam_role.lambda-role-for-rds,
  }
}
