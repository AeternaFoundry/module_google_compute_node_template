variable "compute_node_templates" {
  description = <<EOT
Map of compute_node_templates, attributes below
Required:
    - name
Optional:
    - cpu_overcommit_type
    - deletion_policy
    - description
    - node_affinity_labels
    - node_type
    - project
    - region
    - accelerators (block):
        - accelerator_count (optional)
        - accelerator_type (optional)
    - disks (block):
        - disk_count (optional)
        - disk_size_gb (optional)
        - disk_type (optional)
    - node_type_flexibility (block):
        - cpus (optional)
        - memory (optional)
    - server_binding (block):
        - type (required)
    - timeouts (block):
        - create (optional)
        - delete (optional)
EOT

  type = map(object({
    name                 = string
    cpu_overcommit_type  = optional(string)
    deletion_policy      = optional(string)
    description          = optional(string)
    node_affinity_labels = optional(map(string))
    node_type            = optional(string)
    project              = optional(string)
    region               = optional(string)
    accelerators = optional(list(object({
      accelerator_count = optional(number)
      accelerator_type  = optional(string)
    })))
    disks = optional(list(object({
      disk_count   = optional(number)
      disk_size_gb = optional(number)
      disk_type    = optional(string)
    })))
    node_type_flexibility = optional(object({
      cpus   = optional(string)
      memory = optional(string)
    }))
    server_binding = optional(object({
      type = string
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
    }))
  }))
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

