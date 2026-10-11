output "compute_node_templates_id" {
  description = "Map of id values across all compute_node_templates, keyed the same as var.compute_node_templates except keys with no id are omitted"
  value       = { for k, v in google_compute_node_template.compute_node_templates : k => v.id if v.id != null && length(v.id) > 0 }
}
output "compute_node_templates_accelerators" {
  description = "Map of accelerators values across all compute_node_templates, keyed the same as var.compute_node_templates except keys with no accelerators are omitted"
  value       = { for k, v in google_compute_node_template.compute_node_templates : k => v.accelerators if v.accelerators != null && length(v.accelerators) > 0 }
}
output "compute_node_templates_cpu_overcommit_type" {
  description = "Map of cpu_overcommit_type values across all compute_node_templates, keyed the same as var.compute_node_templates except keys with no cpu_overcommit_type are omitted"
  value       = { for k, v in google_compute_node_template.compute_node_templates : k => v.cpu_overcommit_type if v.cpu_overcommit_type != null && length(v.cpu_overcommit_type) > 0 }
}
output "compute_node_templates_creation_timestamp" {
  description = "Map of creation_timestamp values across all compute_node_templates, keyed the same as var.compute_node_templates except keys with no creation_timestamp are omitted"
  value       = { for k, v in google_compute_node_template.compute_node_templates : k => v.creation_timestamp if v.creation_timestamp != null && length(v.creation_timestamp) > 0 }
}
output "compute_node_templates_deletion_policy" {
  description = "Map of deletion_policy values across all compute_node_templates, keyed the same as var.compute_node_templates except keys with no deletion_policy are omitted"
  value       = { for k, v in google_compute_node_template.compute_node_templates : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "compute_node_templates_description" {
  description = "Map of description values across all compute_node_templates, keyed the same as var.compute_node_templates except keys with no description are omitted"
  value       = { for k, v in google_compute_node_template.compute_node_templates : k => v.description if v.description != null && length(v.description) > 0 }
}
output "compute_node_templates_disks" {
  description = "Map of disks values across all compute_node_templates, keyed the same as var.compute_node_templates except keys with no disks are omitted"
  value       = { for k, v in google_compute_node_template.compute_node_templates : k => v.disks if v.disks != null && length(v.disks) > 0 }
}
output "compute_node_templates_name" {
  description = "Map of name values across all compute_node_templates, keyed the same as var.compute_node_templates except keys with no name are omitted"
  value       = { for k, v in google_compute_node_template.compute_node_templates : k => v.name if v.name != null && length(v.name) > 0 }
}
output "compute_node_templates_node_affinity_labels" {
  description = "Map of node_affinity_labels values across all compute_node_templates, keyed the same as var.compute_node_templates except keys with no node_affinity_labels are omitted"
  value       = { for k, v in google_compute_node_template.compute_node_templates : k => v.node_affinity_labels if v.node_affinity_labels != null && length(v.node_affinity_labels) > 0 }
}
output "compute_node_templates_node_type" {
  description = "Map of node_type values across all compute_node_templates, keyed the same as var.compute_node_templates except keys with no node_type are omitted"
  value       = { for k, v in google_compute_node_template.compute_node_templates : k => v.node_type if v.node_type != null && length(v.node_type) > 0 }
}
output "compute_node_templates_node_type_flexibility" {
  description = "Map of node_type_flexibility values across all compute_node_templates, keyed the same as var.compute_node_templates except keys with no node_type_flexibility are omitted"
  value       = { for k, v in google_compute_node_template.compute_node_templates : k => one(v.node_type_flexibility) if v.node_type_flexibility != null && length(v.node_type_flexibility) > 0 }
}
output "compute_node_templates_project" {
  description = "Map of project values across all compute_node_templates, keyed the same as var.compute_node_templates except keys with no project are omitted"
  value       = { for k, v in google_compute_node_template.compute_node_templates : k => v.project if v.project != null && length(v.project) > 0 }
}
output "compute_node_templates_region" {
  description = "Map of region values across all compute_node_templates, keyed the same as var.compute_node_templates except keys with no region are omitted"
  value       = { for k, v in google_compute_node_template.compute_node_templates : k => v.region if v.region != null && length(v.region) > 0 }
}
output "compute_node_templates_self_link" {
  description = "Map of self_link values across all compute_node_templates, keyed the same as var.compute_node_templates except keys with no self_link are omitted"
  value       = { for k, v in google_compute_node_template.compute_node_templates : k => v.self_link if v.self_link != null && length(v.self_link) > 0 }
}
output "compute_node_templates_server_binding" {
  description = "Map of server_binding values across all compute_node_templates, keyed the same as var.compute_node_templates except keys with no server_binding are omitted"
  value       = { for k, v in google_compute_node_template.compute_node_templates : k => one(v.server_binding) if v.server_binding != null && length(v.server_binding) > 0 }
}

