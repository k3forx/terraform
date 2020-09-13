resource "aws_iam_user" "admin-kanata" {
  name = "admin-kanata"
  path = "/"
  force_destroy = true
  tags = {
  }
}
