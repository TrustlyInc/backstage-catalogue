terraform {
  required_providers {
    incident = {
      source  = "incident-io/incident"
      version = "~> 5.0.0"
    }
  }
}

provider "incident" {
  api_key = var.incident_api_key
}