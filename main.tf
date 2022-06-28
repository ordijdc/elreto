/*   Main execution file, usually it has providers configuration */

provider "aws" {
  region  = "eu-west-1"
  //profile = "default"  
}

resource "aws_s3_bucket" "reto" {
  bucket = "mapfre-gitops-ordijdc"
  force_destroy = true
}

resource "aws_s3_bucket_acl" "reto_bucket_acl" {
  bucket = aws_s3_bucket.reto.id
  acl    = "public-read"
}
