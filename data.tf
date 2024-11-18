/*
####################################################################################################
# Terraform Data Blocks Configuration
#
# Description: This module creates an Glue Database using Terraform.
#
# Author: Subhamay Bhattacharyya
# Created: 18-Nov-2024  Updated: -
# Version: 1.0
#
####################################################################################################
*/

# AWS Region and Caller Identity
data "aws_region" "current" {}

data "aws_caller_identity" "current" {}