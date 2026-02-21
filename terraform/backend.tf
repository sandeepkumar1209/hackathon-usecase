terraform {
  backend "gcs" {
    bucket  = "hackathon-terraform-state-bucket"
    prefix  = "gke/state"
  }
}
