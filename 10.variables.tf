variable "cidr_block" {
  description = "The CIDR block for the VPC"
  type        = string
  #default     = "10.40.0.0/16"
}
variable "environment" {
  description = "The environment for the VPC"
  type        = string
  #default     = "Dev"
}
variable "vpc_name" {
  description = "The name of the VPC"
  type        = string
  #default     = "vpc1"
}
variable "subnet1_cidr_block" {
  description = "CIDR block for the first subnet"
  type        = string
  #default     = "10.40.1.0/24"
}
variable "subnet2_cidr_block" {
  description = "CIDR block for the second subnet"
  type        = string
  #default     = "10.40.2.0/24"
}
variable "subnet3_cidr_block" {
  description = "CIDR block for the second subnet"
  type        = string
  #default     = "10.40.3.0/24"
}
