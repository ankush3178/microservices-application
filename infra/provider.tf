terraform {
  backend "gcs" {
    bucket  = "your-terraform-state-bucket"
    prefix  = "terraform/state"
  }
}

provider "google" {
  project = "your-gcp-project"
  region  = "us-central1"
}
