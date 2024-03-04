#create VPC
resource "aws_vpc" "website_vpc" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "website"
  }
}


#create subnet
resource "aws_subnet" "subnet-1" {
  vpc_id            = aws_vpc.website_vpc.id
  cidr_block        = var.subnet_prefix[0].cidr_block

  tags = {
    Name = var.subnet_prefix[0].name
  }
}

resource "aws_subnet" "subnet-2" {
  vpc_id            = aws_vpc.website_vpc.id
  cidr_block        = var.subnet_prefix[1].cidr_block

  tags = {
    Name = var.subnet_prefix[1].name
  }
}
