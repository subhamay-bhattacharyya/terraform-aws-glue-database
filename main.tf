/*
####################################################################################################
# Terraform Glue Job Configuration
#
# Description: This module creates an Glue Database using Terraform.
#
# Author: Subhamay Bhattacharyya
# Created: 18-Nov-2024  Updated: -
# Version: 1.0
#
####################################################################################################
*/

# --- Glue Catalog Database Configuration ---
resource "aws_glue_catalog_database" "glue-catalog-database" {
  # This file defines the main Terraform configuration for the AWS Glue Database module.
  # It specifies the resources and configurations needed to create and manage an AWS Glue Database.
  # The name of the AWS Glue database, sourced from a local variable.
  name = local.glue-database-name
  description = var.glue-database-description

  # create_table_default_permission {
  #   permissions = ["SELECT"]

  #   principal {
  #     data_lake_principal_identifier = "IAM_ALLOWED_PRINCIPALS"
  #   }
  # }

  tags = var.glue-database-tags == null ? {} : var.glue-database-tags

}