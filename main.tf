#-----------------------#
# Define Google Provider #
#-----------------------#

provider "google" {
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
