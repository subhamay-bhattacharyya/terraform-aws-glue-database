![](https://img.shields.io/github/commit-activity/t/subhamay-bhattacharyya/terraform-aws-glue-database)&nbsp;![](https://img.shields.io/github/last-commit/subhamay-bhattacharyya/terraform-aws-glue-database)&nbsp;![](https://img.shields.io/github/release-date/subhamay-bhattacharyya/terraform-aws-glue-database)&nbsp;![](https://img.shields.io/github/repo-size/subhamay-bhattacharyya/terraform-aws-glue-database)&nbsp;![](https://img.shields.io/github/directory-file-count/subhamay-bhattacharyya/terraform-aws-glue-database)&nbsp;![](https://img.shields.io/github/issues/subhamay-bhattacharyya/terraform-aws-glue-database)&nbsp;![](https://img.shields.io/github/languages/top/subhamay-bhattacharyya/terraform-aws-glue-database)&nbsp;![](https://img.shields.io/github/commit-activity/m/subhamay-bhattacharyya/terraform-aws-glue-database)&nbsp;![](https://img.shields.io/endpoint?url=https://gist.githubusercontent.com/bsubhamay/dc40260dece8caffb5f83d9a793f8afb/raw/terraform-aws-glue-database.json?)

# Terraform AWS Glue Catalog Database Module

This Terraform module creates AWS Glue Catalog Database with various configurations.

## Usage

```hcl
module "glue_database" {
  source  = "app.terraform.io/subhamay-bhattacharyya/glue-database/aws"
  version = "1.0.0"

  aws-region                = "us-east-1"
  project-name              = "your-project-name"
  environment-name          = "devl"
  glue-database-base-name   = "your-glue-database-base-name"
  glue-database-description = "your-glue-database-description"
  glue-database-tags        = null
  ci-build                  = "your-ci-build-string"
}
```

## Inputs

| Name                     | Description                                  | Type   | Default     | Required |
| ------------------------ | -------------------------------------------- | ------ | ----------- | -------- |
| aws-region               | The AWS region to deploy resources           | string | us-east-1   | yes       |
| project-name             | The name of the project                      | string | n/a      | yes       |
| environment-name         | The environment in which to deploy resources | string | devl        | no       |
| glue-database-base-name  | The base name of the Glue Database           | string | n/a         | yes      |
| glue-database-description| The description of the Glue Database         | string | n/a         | no      |
| glue-database-tags       | Tags to apply to the Glue Database           | map    | {}          | no       |
| ci-build                 | CI build identifier                          | string | n/a         | yes      |


## Outputs

| Name                       | Description                        |
| -------------------------- | ---------------------------------- |
| glue-database-name         | The name of the Glue Database      |
| glue-database-arn          | The ARN of the Glue Database       |
| glue-database-description  | The description of the Glue Database |
