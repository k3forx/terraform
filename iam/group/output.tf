output "groups" {
  value = {
    (aws_iam_group.admin.name) = aws_iam_group.admin,
  }
}
