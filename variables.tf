/*
###################################################################################################
# Terraform Variables Configuration
#
# Description: This module creates an Glue Database using Terraform.
#
# Author: Subhamay Bhattacharyya
# Created: 18-Nov-2024  Updated: -
# Version: 1.0
#
####################################################################################################
*/

######################################## AWS Configuration #########################################
variable "aws-region" {
  type    = string
  default = "us-east-1"
}

######################################## Project Name ##############################################
variable "project-name" {
  description = "The name of the project"
  type        = string
  default     = "your-project-name"
}

######################################## Environment Name ##########################################
variable "environment-name" {
  type        = string
  description = <<EOF
  (Optional) The environment in which to deploy our resources to.

  Options:
  - devl : Development
  - test: Test
  - prod: Production

  Default: devl
  EOF
  default     = "devl"

  validation {
    condition     = can(regex("^devl$|^test$|^prod$", var.environment-name))
    error_message = "Err: environment is not valid."
  }
}

######################################## Glue Database #############################################
variable "glue-database-base-name" {
  description = "The name of the Glue Database"
  type        = string
  default     = "your-glue-database-name"
}

variable "glue-database-description" {
  description = "The description of the Glue Database"
  type        = string
  default     = "your-glue-database-description"
  
}

# Default tags for the Glue database
variable "tags" {
  description = "A map of tags to assign to the bucket"
  type        = map(string)
  default = {
    Environment      = "devl"
    ProjectName      = "terraform-s3-bucket-example"
    GitHubRepository = "test-repo"
    GitHubRef        = "refs/heads/main"
    GitHubURL        = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
    GitHubSHA        = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
  }
}

# Glue database tags
variable "glue-database-tags" {
  description = "A map of tags to assign to the bucket"
  type        = map(string)
  default     = null
}

######################################## GitHub ####################################################
# The CI build string
variable "ci-build" {
  description = "The CI build string"
  type        = string
  default     = "gitops"
}

######################################## Local Variables ###########################################
locals {
  glue-database-name = "${var.project-name}-${var.glue-database-base-name}-${var.environment-name}-${data.aws_region.current.id}${var.ci-build}"
}