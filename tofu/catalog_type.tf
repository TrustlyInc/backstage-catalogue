locals {
  service_names = ["FIs", "MIDs"]
}

resource "incident_catalog_type" "incidentio_type" {
  for_each = toset(local.service_names)
  
  name            = each.value
  type_name       = "Custom[\"${each.value}\"]"
  description     = <<EOF
  Type created by Terraform.
  EOF
  categories      = ["service"]
  source_repo_url = "https://url.com"
}

resource "incident_catalog_type_attribute" "type_attribute_description" {
  for_each = incident_catalog_type.incidentio_type

  catalog_type_id = each.value.id
  name            = "Description"
  type            = "Text"
}