variable "standards_lookup" {
  description = <<EOT
Map of standards_lookup, attributes below
Optional:
    - resource_type
EOT

  type = map(object({
    resource_type = optional(string)
  }))
}

