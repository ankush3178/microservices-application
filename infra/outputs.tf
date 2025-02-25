output "gke_cluster_name" {
  description = "The name of the GKE cluster"
  value       = google_container_cluster.gke_cluster.name
}

output "gke_cluster_endpoint" {
  description = "The external endpoint of the GKE cluster"
  value       = google_container_cluster.gke_cluster.endpoint
}

output "sql_instance_connection_name" {
  description = "The connection name for Cloud SQL"
  value       = google_sql_database_instance.sql_instance.connection_name
}

output "sql_database_name" {
  description = "The name of the Cloud SQL database"
  value       = google_sql_database.sql_database.name
}

output "sql_user" {
  description = "The database user"
  value       = var.sql_user
}
