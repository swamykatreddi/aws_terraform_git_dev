resource "aws_security_group" "allow_all_traffic-sg1" {
  name        = "${var.vpc_name}-sg1"
  description = "Security group to allow all inbound and outbound traffic"
  vpc_id      = aws_vpc.vpc1.id # Replace with your VPC ID

  tags = {
    Name = "${var.vpc_name}-sg1"


  }
}

resource "aws_vpc_security_group_ingress_rule" "allow_https_ingress" {
  ip_protocol       = "-1"
  cidr_ipv4         = "0.0.0.0/0"
  security_group_id = aws_security_group.allow_all_traffic-sg1.id
}
