output "standards_lookup_resource_type" {
  description = "Map of resource_type values across all standards_lookup, keyed the same as var.standards_lookup except keys with no resource_type are omitted"
  value       = { for k, v in data.pagerduty_standards.standards_lookup : k => v.resource_type if v.resource_type != null && length(v.resource_type) > 0 }
}
output "standards_lookup_standards" {
  description = "Map of standards values across all standards_lookup, keyed the same as var.standards_lookup except keys with no standards are omitted"
  value       = { for k, v in data.pagerduty_standards.standards_lookup : k => v.standards if v.standards != null && length(v.standards) > 0 }
}

