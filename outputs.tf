output "policies_id" {
  description = "Map of id values across all policies, keyed the same as var.policies"
  value       = { for k, v in britive_policy.policies : k => v.id }
}
output "policies_access_type" {
  description = "Map of access_type values across all policies, keyed the same as var.policies"
  value       = { for k, v in britive_policy.policies : k => v.access_type }
}
output "policies_condition" {
  description = "Map of condition values across all policies, keyed the same as var.policies"
  value       = { for k, v in britive_policy.policies : k => v.condition }
}
output "policies_description" {
  description = "Map of description values across all policies, keyed the same as var.policies"
  value       = { for k, v in britive_policy.policies : k => v.description }
}
output "policies_is_active" {
  description = "Map of is_active values across all policies, keyed the same as var.policies"
  value       = { for k, v in britive_policy.policies : k => v.is_active }
}
output "policies_is_draft" {
  description = "Map of is_draft values across all policies, keyed the same as var.policies"
  value       = { for k, v in britive_policy.policies : k => v.is_draft }
}
output "policies_is_read_only" {
  description = "Map of is_read_only values across all policies, keyed the same as var.policies"
  value       = { for k, v in britive_policy.policies : k => v.is_read_only }
}
output "policies_members" {
  description = "Map of members values across all policies, keyed the same as var.policies"
  value       = { for k, v in britive_policy.policies : k => v.members }
}
output "policies_name" {
  description = "Map of name values across all policies, keyed the same as var.policies"
  value       = { for k, v in britive_policy.policies : k => v.name }
}
output "policies_permissions" {
  description = "Map of permissions values across all policies, keyed the same as var.policies"
  value       = { for k, v in britive_policy.policies : k => v.permissions }
}
output "policies_roles" {
  description = "Map of roles values across all policies, keyed the same as var.policies"
  value       = { for k, v in britive_policy.policies : k => v.roles }
}

