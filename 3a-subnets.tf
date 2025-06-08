

resource "google_compute_subnetwork" "region_a" {
  name                     = "west"
  ip_cidr_range            = "10.100.10.0/24"
  region                   = "us-west1"
  network                  = google_compute_network.main.id
  private_ip_google_access = true
}



# region_a = us-west1
# region_b = us-south1