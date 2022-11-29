resource "aws_subnet" "mysubnet" {
    vpc_id = aws_vpc.myvpc.id
    cidr_block = "10.1.0.0/24"
    map_public_ip_on_launch = "true"
  
}
