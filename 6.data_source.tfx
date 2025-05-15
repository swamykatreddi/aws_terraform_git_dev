data "aws_vpc" "project-vpc" {
  id = "vpc-090113d889463097a"
}
data "aws_subnets" "project-vpc-subnets" {
  filter {
    name   = "vpc-id"
    values = ["vpc-090113d889463097a"]
  }
}

data "aws_subnet" "example" {
  for_each = toset(data.aws_subnets.project-vpc-subnets.ids)
  id       = each.value
}

resource "aws_subnet" "newsubnets" {
  count = 3
  #implicit dependency in vpc id
  vpc_id            = data.aws_vpc.project-vpc.id
  cidr_block        = element(var.newsubnets_cidr_block, count.index)
  availability_zone = element(var.azs, count.index)
  tags = {
    Name        = "${var.vpc_name}-newsubnetsubnets-${count.index + 1}"
    Environment = var.environment

  }
}