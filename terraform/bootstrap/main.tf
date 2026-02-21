provider "google" {
  project = "YOUR_PROJECT_ID"
  region  = "us-central1"
}

resource "google_storage_bucket" "terraform_state" {
  name          = "hackathon-terraform-state-bucket"
  location      = "us-central1"
  force_destroy = false

  versioning {
    enabled = true
  }

  uniform_bucket_level_access = true
}
