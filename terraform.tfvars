cidr_block            = "10.40.0.0/16"
environment           = "Dev"
vpc_name              = "vpc1"
subnet1_cidr_block    = "10.40.1.0/24"
subnet2_cidr_block    = "10.40.2.0/24"
subnet3_cidr_block    = "10.40.3.0/24"
newsubnets_cidr_block = ["10.30.40.0/24", "10.30.20.0/24", "10.30.30.0/24"]
azs = [
  "us-east-1a",
  "us-east-1b",
  "us-east-1c"
]
machine_count = 3
imagename     = "ami-0f9de6e2d2f067fca"
instance_type = "t2.micro"
key_name      = "ram_delete"