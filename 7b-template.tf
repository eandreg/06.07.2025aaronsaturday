# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_region_instance_template
# https://developer.hashicorp.com/terraform/language/functions/file
# Google Compute Engine: Regional Instance Template

#This is for Iowa

resource "google_compute_region_instance_template" "app01" {
  name         = "app01-template-terraform"
  region       = "us-central1"
  description  = "This template is used to clone our vm"
  machine_type = "e2-medium"

  # Create a new disk from an image and set as boot disk
  disk {
    source_image = "debian-cloud/debian-12"
    boot         = true
  }

  # Network Configurations 
  network_interface {
    subnetwork = google_compute_subnetwork.hqinternal.id
    /*access_config {
      # Include this section to give the VM an external IP address
    } */
  }

  # Install Webserver using file() function
  metadata_startup_script = file("./startup.sh")
}

#######################################
#This is for Tokyo

resource "google_compute_region_instance_template" "tokyo1-app01" {
  name         = "tokyo1-app01-template-terraform"
  region       = "asia-northeast1"
  description  = "This template is used to clone our vm"
  machine_type = "e2-medium"

  # Create a new disk from an image and set as boot disk
  disk {
    source_image = "debian-cloud/debian-12"
    boot         = true
  }

  # Network Configurations 
  network_interface {
    subnetwork = google_compute_subnetwork.tokyo1.id
    /*access_config {
      # Include this section to give the VM an external IP address
    } */
  }

  # Install Webserver using file() function
  metadata_startup_script = file("./startup.sh")
}
####################################################
resource "google_compute_region_instance_template" "tokyo2-app01" {
  name         = "tokyo2-app01-template-terraform"
  region       = "asia-northeast1"
  description  = "This template is used to clone our vm"
  machine_type = "e2-medium"

  # Create a new disk from an image and set as boot disk
  disk {
    source_image = "debian-cloud/debian-12"
    boot         = true
  }

  # Network Configurations 
  network_interface {
    subnetwork = google_compute_subnetwork.tokyo2.id
    /*access_config {
      # Include this section to give the VM an external IP address
    } */
  }

  # Install Webserver using file() function
  metadata_startup_script = file("./startup.sh")
}