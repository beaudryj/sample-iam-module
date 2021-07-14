resource "aws_iam_group" "group" {
  count              = var.iam_group ? 1 : 0
  name               = var.role_name
  assume_role_policy = var.assume_role_policy
  tags               = var.tags
}

resource "aws_iam_role" "role" {
  count              = var.iam_role ? 1 : 0
  name               = var.role_name
  assume_role_policy = var.assume_role_policy
  tags               = var.tags
}

resource "aws_iam_user" "user" {
  count              = var.iam_user ? 1 : 0
  name               = var.role_name
  assume_role_policy = var.assume_role_policy
  tags               = var.tags
}

resource "aws_iam_policy" "policy" {
  count       = var.create_policy ? 1 : 0
  name        = var.role_name
  description = var.description

  policy = var.policy

  tags = var.tags
}


