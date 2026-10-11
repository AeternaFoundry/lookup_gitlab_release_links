output "release_links_lookup_id" {
  description = "Map of id values across all release_links_lookup, keyed the same as var.release_links_lookup except keys with no id are omitted"
  value       = { for k, v in data.gitlab_release_links.release_links_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "release_links_lookup_project" {
  description = "Map of project values across all release_links_lookup, keyed the same as var.release_links_lookup except keys with no project are omitted"
  value       = { for k, v in data.gitlab_release_links.release_links_lookup : k => v.project if v.project != null && length(v.project) > 0 }
}
output "release_links_lookup_release_links" {
  description = "Map of release_links values across all release_links_lookup, keyed the same as var.release_links_lookup except keys with no release_links are omitted"
  value       = { for k, v in data.gitlab_release_links.release_links_lookup : k => v.release_links if v.release_links != null && length(v.release_links) > 0 }
}
output "release_links_lookup_tag_name" {
  description = "Map of tag_name values across all release_links_lookup, keyed the same as var.release_links_lookup except keys with no tag_name are omitted"
  value       = { for k, v in data.gitlab_release_links.release_links_lookup : k => v.tag_name if v.tag_name != null && length(v.tag_name) > 0 }
}

