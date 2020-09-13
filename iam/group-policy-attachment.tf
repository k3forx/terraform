resource "aws_iam_group_policy_attachment" "admin-AdministratorAccess-attachment" {
  group = module.group.groups["admin"].name
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
}
