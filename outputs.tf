output "standards_lookup_resource_type" {
  description = "Map of resource_type values across all standards_lookup, keyed the same as var.standards_lookup"
  value       = { for k, v in data.pagerduty_standards.standards_lookup : k => v.resource_type }
}
output "standards_lookup_standards" {
  description = "Map of standards values across all standards_lookup, keyed the same as var.standards_lookup"
  value       = { for k, v in data.pagerduty_standards.standards_lookup : k => v.standards }
}

