terraform {
  backend "gcs" {
    bucket  = "your-terraform-state-bucket"
    prefix  = "terraform/state"
  }
}

provider "google" {
  project = "terraform-451704"
  region  = "us-central1"
}
