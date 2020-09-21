data "aws_iam_policy_document" "allow-connect-to-RDS-doc" {
  statement {
    effect    = "Allow"
    actions   = ["rds-db:connect"]
    resources = ["arn:aws:rds-db:ap-northeast-1:411479233930:dbuser:db-377INWEWIC24TKWVCEGOFM6KCI/lambda-role-for-rds"]
  }
}

resource "aws_iam_policy" "allow-connect-to-RDS" {
  name   = "allow-connect-to-RDS"
  policy = data.aws_iam_policy_document.allow-connect-to-RDS-doc.json
}
