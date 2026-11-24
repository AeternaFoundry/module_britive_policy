variable "policies" {
  description = <<EOT
Map of policies, attributes below
Required:
    - name
Optional:
    - access_type
    - condition
    - description
    - is_active
    - is_draft
    - is_read_only
    - members
    - permissions
    - roles
EOT

  type = map(object({
    name         = string
    access_type  = optional(string)
    condition    = optional(string)
    description  = optional(string)
    is_active    = optional(bool)
    is_draft     = optional(bool)
    is_read_only = optional(bool)
    members      = optional(string)
    permissions  = optional(string)
    roles        = optional(string)
  }))
  validation {
    condition = alltrue([
      for k, v in var.policies : (
        length(v.name) >= 1
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.policies : (
        v.members == null || (length(v.members) >= 1)
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.policies : (
        v.condition == null || (length(v.condition) >= 1)
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.policies : (
        v.permissions == null || (length(v.permissions) >= 1)
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.policies : (
        v.roles == null || (length(v.roles) >= 1)
      )
    ])
    error_message = "must not be empty"
  }
}

