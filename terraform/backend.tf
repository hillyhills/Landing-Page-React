# terraform {
#   backend "s3" {
#     bucket = "terraform-state-bucket-erply"
#     key = "public/terraform.tfstate"
#     region = "eu-north-1"
#     dynamodb_table = "terraform_state_locks"
    
#   }
# }