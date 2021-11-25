



resource "google_project_iam_custom_role" "kube-api-ro" {
  
  
  role_id = "kubeapirocustomrole"

  title       = "Kubernetes API (RO)"
  description = "Grants read-only API access that can be further restricted with RBAC"

  permissions = [
    "container.apiServices.get",
    "container.apiServices.list",
    "container.clusters.get",
    "container.clusters.getCredentials",
  ]
}


resource "google_project_iam_member" "kube-api-ro" {
  project = var.project
  role    = "roles/container.viewer"
  member  = "user:sharmila.tarra@dxc.com"
}