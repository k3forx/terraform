resource "aws_iam_user" "admin-miyahana" {
  name = "admin-miyahana"
  path = "/"
  force_destroy = true
  tags = {
  }
}
