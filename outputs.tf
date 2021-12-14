# The ARN of the role that can be assumed by Lumigo's account.
output "lumigo_role_arn" {
  value = aws_iam_role.lumigo_integration_role.arn
}
