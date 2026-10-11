resource "oci_log_analytics_namespace_storage_archival_config" "log_analytics_namespace_storage_archival_configs" {
  for_each = var.log_analytics_namespace_storage_archival_configs

  namespace = each.value.namespace

  archiving_configuration {
    active_storage_duration         = each.value.archiving_configuration.active_storage_duration
    archival_storage_duration       = each.value.archiving_configuration.archival_storage_duration
    time_oldest_active_bucket_ended = each.value.archiving_configuration.time_oldest_active_bucket_ended
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

