##############
# Toggle for Type 
##############

variable "iam_user" {
  description = "Toggle for creating an iam user"
  type        = bool
  default     = false
}

variable "iam_group" {
  description = "Toggle for creating an iam group."
  type        = bool
  default     = false
}

variable "iam_role" {
  description = "Toggle for creating a iam role."
  type        = bool
  default     = false
}

variable "role_name" {
  description = "Name of the IAM Role."
  type        = string
}

variable "assume_role_policy" {
  description = "IAM assume role policy to use for the IAM Role"
  type        = string
}

variable "policy" {
  description = "policy associated with new role"
  type        = string
  default     = ""
}

variable "existing_policy_arn" {
  description = "arn of existing policy"
  type        = string
  default     = ""
}

variable "create_policy" {
  description = "Toggle Creation of Policy"
  type        = bool
  default     = false
}

variable "tags" {
  description = "Tags for created resources"
  type        = map(any)
}