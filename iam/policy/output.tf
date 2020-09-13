output "policies" {
  value = {
    (aws_iam_policy.allow-connect-to-RDS.name) = aws_iam_policy.allow-connect-to-RDS,
  }
}
