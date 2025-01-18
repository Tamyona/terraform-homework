provider "aws" {
  region = "us-east-1"
}

resource "aws_key_pair" "deployer" {
  key_name   = "Bastion-key"
  public_key = file("~/.ssh/id_rsa.pub")
}

resource "aws_s3_bucket" "example" {
  bucket = "kaizen-kadyrbek"
}

resource "aws_s3_bucket" "bucket1" {
  bucket = "kaizen-eleman"
}

resource "aws_s3_bucket" "bucket2" {
  bucket = "kaizen-ruslan"
}

# terraform import aws_s3_bucket.bucket1 kaizen-eleman
# terraform import aws_s3_bucket.bucket2 kaizen-ruslan