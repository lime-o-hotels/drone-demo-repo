#-----------------------#
# Define Google Provider #
#-----------------------#

provider "google" {
  access_token = "${var.access_token}"
}

#----------------------------#
# Sets Terraform GCS Backend #
#----------------------------#

terraform {
  backend "gcs" {
    bucket      = "tf-demo-bucket"
    prefix      = "terraform/state"
  }
}

resource "google_project" "department_project" {
  name       = "loronken-test-01"
  project_id = "loronken-test-02	"
}
