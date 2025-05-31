# https://www.terraform.io/language/settings/backends/gcs
terraform {
  backend "gcs" {
    bucket      = "nycmanhattan04"
    prefix      = "terraform/state"
    credentials = "andregrffinclass65-d6a872077315.json"
  }
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.0"
    }
  }
}
