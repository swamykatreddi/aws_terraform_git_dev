output "vpc1_id" {
  description = "The ID of the VPC"
  value       = aws_vpc.vpc1.id
}

output "subnet1_id" {
  description = "The IDs of the subnets"
  value       = aws_subnet.subnet1.id
}

output "subnet2_id" {
  description = "The IDs of the subnets"
  value       = aws_subnet.subnet2.id
}

output "subnet3_id" {
  description = "The IDs of the subnets"
  value       = aws_subnet.subnet3.id
}

output "allow_all_traffic-sg1_id" {
  description = "The IDs of the security groups"
  value       = aws_security_group.allow_all_traffic-sg1.id
}

output "s3_bucket_name" {
  description = "The name of the S3 bucket"
  value       = aws_s3_bucket.devsceops40tstate.bucket
}