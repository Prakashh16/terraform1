resource "aws_security_group" "web-sg" {
  name   = "Web-SG"
  vpc_id = aws_vpc.demovpc.id

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    Name = "Web SG"
  }

}

# resource "aws_security_group" "webserver-sg" {
#     name        = "Webserver-SG"
#     description = "Allow inbound traffic from ALB"
#     vpc_id      = aws_vpc.demovpc.id

#     ingress {
#         description = "Allow traffic from web layer"
#         from_port   = 80
#         to_port     = 80
#         protocol    = "tcp"
#         security_groups = ["aws_security_group.web-sg.id"]
#     }

#     egress {
#         from_port = 0
#         to_port   = 0
#         protocol  = "-1"
#         cidr_blocks = ["0.0.0.0/0"]
#     }

#     tags = {
#       Name = "WebServer-SG"
#     }
  
# }