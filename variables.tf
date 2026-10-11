variable "log_analytics_namespace_storage_archival_configs" {
  description = <<EOT
Map of log_analytics_namespace_storage_archival_configs, attributes below
Required:
    - namespace
    - archiving_configuration (block):
        - active_storage_duration (optional)
        - archival_storage_duration (optional)
        - time_oldest_active_bucket_ended (optional)
Optional:
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    namespace = string
    archiving_configuration = object({
      active_storage_duration         = optional(string)
      archival_storage_duration       = optional(string)
      time_oldest_active_bucket_ended = optional(string)
    })
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

