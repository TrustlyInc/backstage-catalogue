locals {
  trustly_alert_sources = [
    {
      name               = "CloudWatch Alerts"
      title              = "{\"content\":[{\"content\":[{\"attrs\":{\"label\":\"Payload → Title\",\"missing\":false,\"name\":\"title\"},\"type\":\"varSpec\"}],\"type\":\"paragraph\"}],\"type\":\"doc\"}"
      description        = "{\"content\":[{\"content\":[{\"attrs\":{\"label\":\"Payload → Description\",\"missing\":false,\"name\":\"description\"},\"type\":\"varSpec\"}],\"type\":\"paragraph\"}],\"type\":\"doc\"}"
      source_type        = "cloudwatch"
      alert_attribute_id = "XXXXXX"
      binding_value      = ""
    },
    {
      name               = "New Relic Alerts"
      title              = "{\"content\":[{\"content\":[{\"attrs\":{\"label\":\"Payload → Title\",\"missing\":false,\"name\":\"title\"},\"type\":\"varSpec\"}],\"type\":\"paragraph\"}],\"type\":\"doc\"}"
      description        = "{\"content\":[{\"content\":[{\"attrs\":{\"label\":\"Payload → Description\",\"missing\":false,\"name\":\"description\"},\"type\":\"varSpec\"}],\"type\":\"paragraph\"}],\"type\":\"doc\"}"
      source_type        = "new_relic"
      alert_attribute_id = "XXXXXX"
      binding_value      = ""
    },
    {
      name               = "AlertManager Alerts"
      title              = "{\"content\":[{\"content\":[{\"attrs\":{\"label\":\"Payload → Title\",\"missing\":false,\"name\":\"title\"},\"type\":\"varSpec\"}],\"type\":\"paragraph\"}],\"type\":\"doc\"}"
      description        = "{\"content\":[{\"content\":[{\"attrs\":{\"label\":\"Payload → Description\",\"missing\":false,\"name\":\"description\"},\"type\":\"varSpec\"}],\"type\":\"paragraph\"}],\"type\":\"doc\"}"
      source_type        = "alertmanager"
      alert_attribute_id = "XXXXXX"
      binding_value      = ""
    }
  ]
}