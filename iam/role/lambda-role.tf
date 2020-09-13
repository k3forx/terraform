data "aws_iam_policy_document" "lambda-role" {
  statement {
    sid = ""
    effect = "Allow"
    actions = ["sts:AssumeRole"]

    principals {
      type        = "Service"
      identifiers = ["lambda.amazonaws.com"]
    }
  }
}

resource "aws_iam_role" "lambda-role-for-rds" {
   name               = "lambda-role-for-rds"
   description = "Test of IAM authentication for RDS"
   path = "/"
   tags = {
   }
   assume_role_policy = data.aws_iam_policy_document.lambda-role.json
 }
