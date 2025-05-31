resource "google_compute_instance" "iowahq-vm" {
  name         = "iowahq-vm"
  machine_type = "e2-medium"
  zone         = "us-central1-a"


  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-12"
    }
  }

  network_interface {
    subnetwork = google_compute_subnetwork.hqinternal.name
    access_config {
      // Ephemeral public IP
    }
  }

  metadata_startup_script = file("./startup.sh")

  }

########################################################################
resource "google_compute_instance" "tokyo1-vm" {
  name         = "tokyo1-vm"
  machine_type = "e2-medium"
  zone         = "asia-northeast1-a"


  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-12"
    }
  }

  network_interface {
    subnetwork = google_compute_subnetwork.tokyo1.name
    access_config {
      // Ephemeral public IP
    }
  }
metadata_startup_script = file("./startup.sh")

}
