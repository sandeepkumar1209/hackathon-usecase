resource "google_container_cluster" "gke" {
  name     = "hackathon-gke"
  location = var.region
  network    = google_compute_network.vpc.id
  subnetwork = google_compute_subnetwork.private_subnet.name

  remove_default_node_pool = true
  initial_node_count       = 1
}

resource "google_container_node_pool" "primary_nodes" {
  name       = "primary-node-pool"
  location   = var.region
  cluster    = google_container_cluster.gke.name
  node_count = 2

  node_config {
    machine_type = "e2-medium"
    oauth_scopes = [
      "https://www.googleapis.com/auth/cloud-platform"
    ]
  }
}
