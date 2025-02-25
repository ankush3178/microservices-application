resource "google_container_cluster" "gke_cluster" {
  name     = "my-cluster"
  location = "us-central1"
}

resource "google_sql_database_instance" "sql_instance" {
  name             = "user-db-instance"
  database_version = "MYSQL_8_0"
  region           = "us-central1"
  settings {
    tier = "db-f1-micro"
  }
}
