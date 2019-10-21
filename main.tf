#-----------------------#
# Define Google Provider #
#-----------------------#

provider "google" {
  access_token = "${var.access_token}"
}


resource "google_project" "department_project" {
  name       = "loronken-test-01"
  project_id = "loronken-test-02	"
}
