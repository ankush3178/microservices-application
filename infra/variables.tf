variable "project_id" {
  description = "The GCP project ID"
  type        = string
}

variable "region" {
  description = "The GCP region"
  type        = string
  default     = "us-central1"
}

variable "cluster_name" {
  description = "The name of the GKE cluster"
  type        = string
  default     = "my-cluster"
}

variable "sql_instance_name" {
  description = "The Cloud SQL instance name"
  type        = string
  default     = "user-db-instance"
}

variable "sql_database_name" {
  description = "The database name"
  type        = string
  default     = "userdb"
}

variable "sql_user" {
  description = "The database username"
  type        = string
  default     = "root"
}

variable "sql_password" {
  description = "The database password (Use a secret manager in production)"
  type        = string
  sensitive   = true
}

variable "terraform_bucket" {
  description = "The GCS bucket for Terraform state"
  type        = string
}
