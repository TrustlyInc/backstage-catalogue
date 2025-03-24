resource "incident_alert_source" "trustly_alert_sources" {
  for_each = { for source in local.trustly_alert_sources :
    source.source_type => source
  }

  name        = each.value.name
  source_type = each.value.source_type

  template = {
    description = {
      literal = each.value.description
    }
    title = {
      literal = each.value.title
    }
    attributes = [
      # {
      #   alert_attribute_id = each.value.alert_attribute_id
      #   binding = {
      #     value = {
      #       literal = each.value.binding_value
      #     }
      #   }
      # }
    ]

    expressions = [
      # {
      #   label          = "Default Expression"
      #   reference      = "default_ref"
      #   root_reference = "root"
      #   operations = [{
      #     operation_type = "navigate"
      #     navigate = {
      #       reference = "some_reference"
      #     }
      #   }]
      # }
    ]
  }
  lifecycle {
    ignore_changes = [ template ]
  }
}