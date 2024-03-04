region        = "eu-north-1"
iam_user_name = "terraform_user"
bucket_name   = "terraform-state-bucket-erply"
table_name    = "terraform_state_locks"
root_domain = "hilary.cloud"
dns_rocord_ttl = 300
website_bucket = "hilary.cloud"
force_destroy = false
index_document = "index.html"
versioning_enabled = "Enabled"
subnet_prefix = [{ cidr_block = "10.0.1.0/24", name = "prod_subnet" }, { cidr_block = "10.0.2.0/24", name = "dev_subnet" }]
