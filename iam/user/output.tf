output "users" {
  value = {
    (aws_iam_user.admin-miyahana.name) = aws_iam_user.admin-miyahana,
  }
}
