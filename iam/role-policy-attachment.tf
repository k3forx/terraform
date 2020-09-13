resource "aws_iam_role_policy_attachment" "lambda-role-for-RDS-allow-connect-to-RDS-policy-attachment" {
  role = module.role.roles["lambda-role-for-rds"].name
  policy_arn = module.policy.policies["allow-connect-to-RDS"].arn
}

resource "aws_iam_role_policy_attachment" "lambda-role-for-RDS-AWSLambdaBasicExecutionRole-policy-attachment" {
  role = module.role.roles["lambda-role-for-rds"].name
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole"
}
