terraform {
  backend "s3" {
    bucket         = "ar-terraform-demo"    # create this before terraform apply
    key            = "arehman/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "terraform-lock"   # create this before terraform apply
  }
}