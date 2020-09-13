data "aws_iam_policy_document" "allow-connect-to-RDS-doc" {
  statement {
    effect    = "Allow"
    actions   = ["rds-db:connect"]
    resources = ["arn:aws:rds-db:ap-northeast-1:411479233930:dbuser:db-4LJNQIAXQZBUL3F54L2J6HDHHQ/lambda_role_for_rds"]
  }
}

resource "aws_iam_policy" "allow-connect-to-RDS" {
  name   = "allow-connect-to-RDS"
  policy = data.aws_iam_policy_document.allow-connect-to-RDS-doc.json
}
