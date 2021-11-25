provider "google" {
  project = var.project
  #version = "~> 3.38.0"
  #access_token = var.token
  credentials = "${file("credentials.json")}"
}


 
resource "google_container_cluster" "default" {
  name               = var.cluster_name
  location           = "${var.gcp_region}"
  initial_node_count = 1
}




