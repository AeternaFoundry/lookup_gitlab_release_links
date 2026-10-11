variable "release_links_lookup" {
  description = <<EOT
Map of release_links_lookup, attributes below
Required:
    - project
    - tag_name
EOT

  type = map(object({
    project  = string
    tag_name = string
  }))
}

