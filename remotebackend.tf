terraform {
  backend "s3" {
    bucket = "learning-buckets3"
    key    = "learning.tfstate"
    region = "us-east-1"
  }
}