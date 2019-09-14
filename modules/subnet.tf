#================ Public Subnet ================

resource "aws_subnet" "public-subnet-1" {
  vpc_id            = "${var.vpc_id}"
  availability_zone = "${var.aws_region}a"
  cidr_block        = "10.0.1.0/24"
  map_public_ip_on_launch = "true"

  tags = {
    Name = "public-terraform-subnet-1"
  }
}

output "out_public-subnet-1_id" {
  value = "${aws_subnet.public-subnet-1.id}"
}

output "out_cidr_block_public-subnet-1" {
  value = "${aws_subnet.public-subnet-1.cidr_block}"
}

resource "aws_subnet" "public-subnet-2" {
  vpc_id            = "${var.vpc_id}"
  availability_zone = "${var.aws_region}b"
  cidr_block        = "10.0.2.0/24"
  map_public_ip_on_launch = "true"

  tags = {
    Name = "public-terraform-subnet-2"
  }
}

output "out_public-subnet-2_id" {
  value = "${aws_subnet.public-subnet-2.id}"
}

output "out_cidr_block_public-subnet-2" {
    value = "${aws_subnet.public-subnet-2.cidr_block}"
}

#================ Private Subnet ================

resource "aws_subnet" "private-subnet-1" {
  vpc_id            = "${var.vpc_id}"
  availability_zone = "${var.aws_region}a"
  cidr_block        = "10.0.3.0/24"
  map_public_ip_on_launch = "false"

  tags = {
    Name = "private-terraform-subnet-1"
  }
}

output "out_private-subnet-1_id" {
  value = "${aws_subnet.private-subnet-1.id}"
}

output "out_cidr_block_private-subnet-1" {
    value = "${aws_subnet.private-subnet-1.cidr_block}"
}

resource "aws_subnet" "private-subnet-2" {
  vpc_id            = "${var.vpc_id}"
  availability_zone = "${var.aws_region}b"
  cidr_block        = "10.0.4.0/24"
  map_public_ip_on_launch = "false"

  tags = {
    Name = "private-terraform-subnet-2"
  }
}

output "out_private-subnet-2_id" {
  value = "${aws_subnet.private-subnet-2.id}"
}

output "out_cidr_block_private-subnet-2" {
    value = "${aws_subnet.private-subnet-2.cidr_block}"
}
