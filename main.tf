data "gitlab_release_links" "release_links_lookup" {
  for_each = var.release_links_lookup

  project  = each.value.project
  tag_name = each.value.tag_name
}

