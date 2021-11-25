variable "project" {
  description = "The name of the project in which to create the Kubernetes cluster."
  type        = string
  default = ""
}


variable "gcp_region" {
    description = "Default Project Region"
    default     = "us-central1"
}

variable "cluster_name"{
    type = string
    default = "vm-clusters"
}

