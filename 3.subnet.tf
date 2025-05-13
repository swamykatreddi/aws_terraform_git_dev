# Public Subnet
resource "aws_subnet" "subnet1" {
  #implicit dependency in vpc id
  vpc_id            = aws_vpc.vpc1.id
  cidr_block        = var.subnet1_cidr_block
  availability_zone = "us-east-1a"
  tags = {
    Name = "${var.vpc_name}-subnet1"
  }
}
resource "aws_subnet" "subnet2" {
  vpc_id            = aws_vpc.vpc1.id
  cidr_block        = var.subnet2_cidr_block
  availability_zone = "us-east-1b"
  tags = {
    Name = "${var.vpc_name}-subnet2"
  }
}
resource "aws_subnet" "subnet3" {
  vpc_id            = aws_vpc.vpc1.id
  cidr_block        = var.subnet3_cidr_block
  availability_zone = "us-east-1c"
  tags = {
    Name = "${var.vpc_name}-subnet3"
  }
}

# S3 Bucket
resource "aws_s3_bucket" "devsceops40" {
  bucket        = "devsceops40twotwo"
  force_destroy = true
  tags = {
    Name        = "devsceops40twotwo"
    Environment = "Dev"
  }
  depends_on = [aws_subnet.subnet1, aws_subnet.subnet2, aws_subnet.subnet3]
}