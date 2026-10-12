data "pagerduty_standards" "standards_lookup" {
  for_each = var.standards_lookup

  resource_type = each.value.resource_type
}

