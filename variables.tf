variable "jms_fleet_performance_tuning_analysis_results_lookup" {
  description = <<EOT
Map of jms_fleet_performance_tuning_analysis_results_lookup, attributes below
Required:
    - fleet_id
Optional:
    - application_id
    - application_name
    - host_name
    - managed_instance_id
    - time_end
    - time_start
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    fleet_id            = string
    application_id      = optional(string)
    application_name    = optional(string)
    host_name           = optional(string)
    managed_instance_id = optional(string)
    time_end            = optional(string)
    time_start          = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

