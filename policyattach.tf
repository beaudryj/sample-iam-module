resource "aws_iam_role_policy_attachment" "group-policy-attachment" {
  count      = var.iam_group ? 1 : 0
  role       = aws_iam_group.group.name
  policy_arn = var.create_policy ? aws_iam_policy.policy.arn : var.existing_policy_arn

  depends_on = [aws_iam_group.group, aws_iam_policy.policy]
}

resource "aws_iam_role_policy_attachment" "role-policy-attachment" {
  count      = var.iam_role ? 1 : 0
  role       = aws_iam_group.role.name
  policy_arn = var.create_policy ? aws_iam_policy.policy.arn : var.existing_policy_arn

  depends_on = [aws_iam_role.role, aws_iam_policy.policy]
}

resource "aws_iam_role_policy_attachment" "user-policy-attachment" {
  count      = var.iam_user ? 1 : 0
  role       = aws_iam_group.user.name
  policy_arn = var.create_policy ? aws_iam_policy.policy.arn : var.existing_policy_arn

  depends_on = [aws_iam_user.user, aws_iam_policy.policy]
}