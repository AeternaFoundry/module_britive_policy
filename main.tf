resource "britive_policy" "policies" {
  for_each = var.policies

  name         = each.value.name
  access_type  = each.value.access_type
  condition    = each.value.condition
  description  = each.value.description
  is_active    = each.value.is_active
  is_draft     = each.value.is_draft
  is_read_only = each.value.is_read_only
  members      = each.value.members
  permissions  = each.value.permissions
  roles        = each.value.roles
}

