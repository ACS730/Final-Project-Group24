terraform {
  backend "s3" {
    bucket = "stagging-acs730-final-project"      // Bucket where to SAVE Terraform State
    key    = "stagging-network/terraform.tfstate" // Object name in the bucket to SAVE Terraform State
    region = "us-east-1"                     // Region where bucket is created
  }
}