# main.tf

provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "website_bucket" {
  bucket = "nextwork-website-project-dahrihadri"
  acl    = "public-read"
  force_destroy = true

  website {
    index_document = "index.html"
  }

  versioning {
    enabled = true
  }

  lifecycle {
    prevent_destroy = false
  }
}

resource "aws_s3_bucket_object" "website_files" {
  bucket = aws_s3_bucket.website_bucket.bucket
  key    = "index.html"
  source = "assets/index.html"
  acl    = "public-read"
}

resource "aws_s3_bucket_object" "website_assets" {
  bucket = aws_s3_bucket.website_bucket.bucket
  key    = "website_files/"
  source = "assets/NextWork - Everyone should be in a job they love_files/"
  acl    = "public-read"
}