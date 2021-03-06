variable "create_roles" {
  description = "Controls whether to create IAM roles"
  default     = true
}

variable "create_policies" {
  description = "Controls whether to create IAM policies; when false, `policy` must be an ARN"
  default     = true
}

variable "create_instance_profiles" {
  description = "Controls whether to create IAM instance profiles"
  default     = false
}

variable "max_session_duration" {
  description = "The maximum session duration (in seconds) for each role, value must be between 60 to 43200 seconds"
  type        = "string"
  default     = "43200"
}

variable "tags" {
  description = "Map of tags to apply to the IAM roles"
  type        = "map"
  default     = {}
}

variable "template_vars" {
  description = "Map of input variables for IAM trust and policy templates."
  type        = "map"
}

variable "roles" {
  description = "Schema list of IAM roles, consisting of name, policy template, and trust template"
  type        = "list"
  default     = []
}

variable "template_paths" {
  description = "Paths to the directories containing the templates for IAM policies and trusts"
  type        = "list"
}
