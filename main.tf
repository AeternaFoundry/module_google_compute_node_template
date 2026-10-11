resource "google_compute_node_template" "compute_node_templates" {
  for_each = var.compute_node_templates

  name                 = each.value.name
  cpu_overcommit_type  = each.value.cpu_overcommit_type
  deletion_policy      = each.value.deletion_policy
  description          = each.value.description
  node_affinity_labels = each.value.node_affinity_labels
  node_type            = each.value.node_type
  project              = each.value.project
  region               = each.value.region

  dynamic "accelerators" {
    for_each = each.value.accelerators != null ? each.value.accelerators : []
    content {
      accelerator_count = accelerators.value.accelerator_count
      accelerator_type  = accelerators.value.accelerator_type
    }
  }

  dynamic "disks" {
    for_each = each.value.disks != null ? each.value.disks : []
    content {
      disk_count   = disks.value.disk_count
      disk_size_gb = disks.value.disk_size_gb
      disk_type    = disks.value.disk_type
    }
  }

  dynamic "node_type_flexibility" {
    for_each = each.value.node_type_flexibility != null ? [each.value.node_type_flexibility] : []
    content {
      cpus   = node_type_flexibility.value.cpus
      memory = node_type_flexibility.value.memory
    }
  }

  dynamic "server_binding" {
    for_each = each.value.server_binding != null ? [each.value.server_binding] : []
    content {
      type = server_binding.value.type
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
    }
  }
}

