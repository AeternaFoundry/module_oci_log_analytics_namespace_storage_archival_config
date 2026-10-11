output "log_analytics_namespace_storage_archival_configs_id" {
  description = "Map of id values across all log_analytics_namespace_storage_archival_configs, keyed the same as var.log_analytics_namespace_storage_archival_configs except keys with no id are omitted"
  value       = { for k, v in oci_log_analytics_namespace_storage_archival_config.log_analytics_namespace_storage_archival_configs : k => v.id if v.id != null && length(v.id) > 0 }
}
output "log_analytics_namespace_storage_archival_configs_archiving_configuration" {
  description = "Map of archiving_configuration values across all log_analytics_namespace_storage_archival_configs, keyed the same as var.log_analytics_namespace_storage_archival_configs except keys with no archiving_configuration are omitted"
  value       = { for k, v in oci_log_analytics_namespace_storage_archival_config.log_analytics_namespace_storage_archival_configs : k => one(v.archiving_configuration) if v.archiving_configuration != null && length(v.archiving_configuration) > 0 }
}
output "log_analytics_namespace_storage_archival_configs_is_archiving_enabled" {
  description = "Map of is_archiving_enabled values across all log_analytics_namespace_storage_archival_configs, keyed the same as var.log_analytics_namespace_storage_archival_configs except keys with no is_archiving_enabled are omitted"
  value       = { for k, v in oci_log_analytics_namespace_storage_archival_config.log_analytics_namespace_storage_archival_configs : k => v.is_archiving_enabled if v.is_archiving_enabled != null }
}
output "log_analytics_namespace_storage_archival_configs_namespace" {
  description = "Map of namespace values across all log_analytics_namespace_storage_archival_configs, keyed the same as var.log_analytics_namespace_storage_archival_configs except keys with no namespace are omitted"
  value       = { for k, v in oci_log_analytics_namespace_storage_archival_config.log_analytics_namespace_storage_archival_configs : k => v.namespace if v.namespace != null && length(v.namespace) > 0 }
}

