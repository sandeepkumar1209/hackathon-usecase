output "gke_cluster_name" {
  value = google_container_cluster.gke.name
}

output "artifact_registry_url" {
  value = google_artifact_registry_repository.docker_repo.name
}
