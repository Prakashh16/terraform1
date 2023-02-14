resource "aws_instance" "demoinstance" {
  ami                         = "ami-01a4f99c4ac11b03c"
  instance_type               = "t2.micro"
  key_name                    = "tests"
  vpc_security_group_ids      = ["${aws_security_group.web-sg.id}"]
  subnet_id                   = aws_subnet.public-subnet-1.id
  associate_public_ip_address = true
  user_data                   = file("data.sh")


  tags = {
    Name = "My Public Instance"
  }

}

resource "aws_instance" "demoinstance1" {
  ami                         = "ami-01a4f99c4ac11b03c"
  instance_type               = "t2.micro"
  key_name                    = "tests"
  vpc_security_group_ids      = ["${aws_security_group.web-sg.id}"]
  subnet_id                   = aws_subnet.public-subnet-2.id
  associate_public_ip_address = true
  user_data                   = file("data.sh")

  tags = {
    Name = "My Public Instance 2"
  }
}