resource "google_artifact_registry_repository" "docker_repo" {
  location      = var.region
  repository_id = "hackathon-docker-repo"
  description   = "Docker repo for microservices"
  format        = "DOCKER"
}
