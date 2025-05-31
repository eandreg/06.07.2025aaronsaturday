# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_router
resource "google_compute_router" "iowa" {
  name    = "iowarouter"
  region  = "us-central1"
  network = google_compute_network.main.id
}