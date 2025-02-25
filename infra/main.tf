resource "google_container_cluster" "gke_cluster" {
  name     = "my-cluster"
  location = "us-central1"
  deletion_protection = false

  initial_node_count = 1

node_config {
    machine_type = "e2-medium"
    disk_size_gb = 50  # Reduce disk size to fit within quota
    disk_type    = "pd-standard"  # Use standard persistent disk instead of SSD
    preemptible  = false
  }
}

resource "google_sql_database_instance" "sql_instance" {
  name             = "user-db-instance"
  database_version = "MYSQL_8_0"
  region           = "us-central1"
  settings {
    tier = "db-f1-micro"
  }
  deletion_protection = false
}

resource "google_sql_database" "sql_database" {
  name     = "user-db"  # Change to your database name
  instance = google_sql_database_instance.sql_instance.name  # Link to the SQL instance
}

