terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "4.51.0"
    }
  }
}

provider "google" {
  credentials = file("master-channel-387506-953eb475daf5.json")

  project = "master-channel-387506"
  region  = "us-central1"
  zone    = "us-central1-c"
}


resource "google_compute_instance" "default" {
  name         = "terraform-provisioner"
  machine_type = "e2-medium"
  zone         = "us-central1-a"

  tags = ["reason"]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
      labels = {
        my_label = "value"
      }
    }
  }

  network_interface {
    network = "default"

    access_config {
      // Ephemeral public IP
    }
  }

  metadata = {
    reason = "Moringa class"
  }

   metadata_startup_script = "adduser joy && echo 'joy:joy123' | chpasswd && echo 'root:joy123' | chpasswd && sed -i 's/PermitRootLogin no/PermitRootLogin yes/g' /etc/ssh/sshd_config && systemctl restart sshd"

}
