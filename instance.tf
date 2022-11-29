resource "aws_instance" "redhat" {
  ami           = "ami-05723c3b9cf4bf4ff" 
  instance_type = "t2.micro"
  subnet_id = aws_subnet.mysubnet.id
}