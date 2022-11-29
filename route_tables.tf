resource "aws_route_table" "route-public" {
    vpc_id = aws_vpc.myvpc.id

}

resource "aws_route" "public_route" {
    route_table_id = aws_route_table.route-public.id
    destination_cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.mygateway.id
  
}

resource "aws_route_table_association" "associated" {
    subnet_id = aws_subnet.mysubnet.id
    route_table_id = aws_route_table.route-public.id
  
}
