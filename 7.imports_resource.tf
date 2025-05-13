resource "aws_s3_bucket" "devsceops123" {
  bucket        = "devsecops-123"
  force_destroy = true
  tags = {
    Name        = "devsceops-123"
    Environment = var.environment
  }
}
resource "aws_s3_bucket" "devsceops1234" {
  bucket        = "gajapathiraokatreddi-kms-cross-account.xyz"
  force_destroy = true
  tags = {
    Name        = "devsceops-1234"
    Environment = var.environment
  }
  lifecycle {
    create_before_destroy = true
  }
}