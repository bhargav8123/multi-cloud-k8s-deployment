provider "google" {
  project = "your-gcp-project-id"
  region  = "us-central1"
}

resource "google_container_cluster" "gke" {
  name     = "multi-cloud-gke"
  location = "us-central1"

  initial_node_count = 2

  node_config {
    machine_type = "e2-medium"
    disk_size_gb = 10
  }
}
