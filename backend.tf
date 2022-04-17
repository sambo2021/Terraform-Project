terraform {
  backend "s3" {
    bucket         = "terraformcourse-day1-2022"
    key            = "iti/dev/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "backend"
  }
}
