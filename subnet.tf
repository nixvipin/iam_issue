resource "aws_subnet" "private-ap-south-1" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "10.0.0.0/19"
  availability_zone = "ap-south-1"

tags = {
  "Name" = "private-ap-south-1"
  "kubernetes.io/role/internal-elb" = "1"
  "kubernetes.io/cluster/demo" = "owned"
  }
}

resource "aws_subnet" "public-ap-south-1" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "10.0.64.0/19"
  availability_zone = "ap-south-1"
  #map_public_ip_on_launch = true

tags = {
  "Name" = "public-ap-south-1"
  "kubernetes.io/role/elb" = "1"
  "kubernetes.io/cluster/demo" = "owned"
  }
}
