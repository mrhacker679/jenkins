resource "aws_instance" "jenkins" {
  ami           = "ami-0a6b2839d44d781b2"
  instance_type = "t2.medium"

  user_data = file("jenkins.sh")
  key_name = "servers"
  security_groups = "allow_all"

  tags = {
    Name = "Jenkins"
  }
}


resource "aws_instance" "sonar" {
    ami = "ami-0a6b2839d44d781b2"
    instance_type = "t2.medium"

    user_data = file("sonar.sh")
    key_name = "servers"
    security_groups = "allow_all"
    tags = {
        Name = "Sonar"
    }
  
}


resource "aws_instance" "nexus" {
    ami = "ami-08e637cea2f053dfa"
    instance_type = "t2.medium"

    user_data = file("nexus.sh")
    key_name = "servers"
    security_groups = "allow_all"
    tags = {
        Name = "Nexus"
    }
}


resource "aws_security_group" "allow_tls" {
  name        = "allow_all"
  description = "Allow ALL"
#   vpc_id      = "default"

  ingress {
    description      = "ALl"
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "allow_all"
  }
}


