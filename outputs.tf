# The ARN of the role that can be assumed by Lumigo's account.
output "lumigo_role_arn" {
  description = "The ARN of the generated Lumigo role"
  value       = aws_iam_role.lumigo_integration_role.arn
}
