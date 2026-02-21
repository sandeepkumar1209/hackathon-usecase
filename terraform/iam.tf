resource "google_service_account" "gke_sa" {
  account_id   = "gke-node-sa"
  display_name = "GKE Node Service Account"
}

resource "google_project_iam_member" "gke_artifact_registry" {
  role   = "roles/artifactregistry.reader"
  member = "serviceAccount:${google_service_account.gke_sa.email}"
}

resource "google_project_iam_member" "gke_logging" {
  role   = "roles/logging.logWriter"
  member = "serviceAccount:${google_service_account.gke_sa.email}"
}
