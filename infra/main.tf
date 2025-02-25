resource "google_container_cluster" "gke_cluster" {
  name     = "my-cluster"
  location = "us-central1"

  initial_node_count = 1
}

resource "google_sql_database_instance" "sql_instance" {
  name             = "user-db-instance"
  database_version = "MYSQL_8_0"
  region           = "us-central1"
  settings {
    tier = "db-f1-micro"
  }
}

resource "google_sql_database" "sql_database" {
  name     = "user-db"  # Change to your database name
  instance = google_sql_database_instance.sql_instance.name  # Link to the SQL instance
}

