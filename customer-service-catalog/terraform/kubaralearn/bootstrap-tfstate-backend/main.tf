terraform {
  required_version = ">=1.9.3"
  required_providers {
    terraform = {
      source = "terraform.io/builtin/terraform"
    }
    stackit = {
      source  = "stackitcloud/stackit"
      version = "0.63.0"
    }
    aws = {
      source  = "hashicorp/aws"
      version = ">= 6.12.0"
    }
  }
}

module "objectstorage-bucket" {
  source = "../../../../managed-service-catalog/terraform/modules/objectstorage-bucket"

  project_id             = "05915afc-6674-4daf-b488-243cda9a5b71"                          # stackit project id
  credentials_group_name = "cg-kubaralearn-dev"        # you can assign any name
  bucket_name            = "bucket-tf-kubaralearn-dev" #you can use any name that has not been used globally for buckets
}

output "debug" {
  value     = module.objectstorage-bucket
  sensitive = true
}
