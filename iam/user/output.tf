output "users" {
  value = {
    (aws_iam_user.admin-kanata.name) = aws_iam_user.admin-kanata,
  }
}
