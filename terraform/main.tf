terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = var.region
}

module "backend" {
  source        = "./modules/remote_backend"
  iam_user_name = var.iam_user_name
  bucket_name   = var.bucket_name
  table_name    = var.table_name
}

module "dns_acm" {
  source = "./modules/routes53_acm"
  root_domain = var.root_domain
  dns_rocord_ttl = var.dns_rocord_ttl
}

module "s3_website" {
  source = "./modules/s3_website" 
  website_bucket = var.website_bucket
  force_destroy = var.force_destroy
  versioning_enabled = var.versioning_enabled
  index_document = var.index_document
  region = var.region
}

module "website_vpc" {
  source = "./modules/vpc_subnet"
  subnet_prefix = var.subnet_prefix
}