terraform {
  backend "s3" {
    bucket = "trustly-amer-ent-us-west-2-terraform-remote-state"
    key    = "incidentio/terraform.tfstate"
    region = "us-west-2"

    dynamodb_table = "trustly-amer-ent-us-west-2-terraform-remote-state-locks"
    encrypt        = "true"
  }
}