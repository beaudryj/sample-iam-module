###########################
#    User 
###########################

output "created-iam-user-name" {
  value       = var.iam_user ? aws_iam_user.user.name : ""
  description = "Name of IAM user created."
}

output "created-iam-user-id" {
  value       = var.iam_user ? aws_iam_user.user.id : ""
  description = "ID of IAM user created."
}

output "created-iam-user-arn" {
  value       = var.iam_user ? aws_iam_user.user.arn : ""
  description = "Arn of IAM user created."
}

###########################
#    Group
###########################

output "created-iam-group-name" {
  value       = var.iam_group ? aws_iam_group.group.name : ""
  description = "Name of IAM group created."
}

output "created-iam-group-id" {
  value       = var.iam_group ? aws_iam_group.group.id : ""
  description = "ID of IAM group created."
}

output "created-iam-group-arn" {
  value       = var.iam_group ? aws_iam_group.group.arn : ""
  description = "Arn of IAM group created."
}

###########################
#    Role
###########################

output "created-iam-role-name" {
  value       = var.iam_role ? aws_iam_role.role.name : ""
  description = "Name of IAM role created."
}

output "created-iam-role-id" {
  value       = var.iam_role ? aws_iam_role.role.id : ""
  description = "ID of IAM role created."
}

output "created-iam-role-arn" {
  value       = var.iam_role ? aws_iam_role.role.arn : ""
  description = "Arn of IAM role created."
}

###########################
#    Policy ARN 
###########################

output "policy-arn" {
  value       = var.create_policy ? aws_iam_policy.policy.arn : var.existing_policy_arn
  description = "ARN of Policy Used."
}