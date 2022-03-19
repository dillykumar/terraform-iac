resource "aws_s3_bucket" "statebucket" {
  bucket = "learningremotestate"

  tags = {
    Name        = "Terraform state bucket"
    Environment = "Dev"
  }


  depends_on = [
    aws_vpc.myvpc,
  ]
}