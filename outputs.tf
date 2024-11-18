/*
####################################################################################################
# Terraform Glue Job Outputs Configuration
#
# Description: This module creates an Glue Database using Terraform.
#
# Author: Subhamay Bhattacharyya
# Created: 18-Nov-2024  Updated: -
# Version: 1.0
#
####################################################################################################
*/

# --- Glue Database Outputs ---
output "glue-database-name" {
  description = "The name of the Glue Database"
  value       = aws_glue_catalog_database.glue-catalog-database.name
}

output "glue-database-arn" {
  description = "The ARN of the Glue Database"
  value       = aws_glue_catalog_database.glue-catalog-database.arn
}

output "glue-database-description" {
  description = "The description of the Glue Database"
  value       = aws_glue_catalog_database.glue-catalog-database.description
}