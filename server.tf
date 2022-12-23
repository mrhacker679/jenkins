resource "aws_instance" "jenkins" {
  ami           = "ami-0a6b2839d44d781b2"
  instance_type = "t2.medium"

  user_data = file("jenkins.sh")
  key_name = "servers"
  security_groups = [aws_security_group.serversg.id]

  tags = {
    Name = "Jenkins"
  }
}


resource "aws_instance" "sonar" {
    ami = "ami-0a6b2839d44d781b2"
    instance_type = "t2.medium"

    user_data = file("sonar.sh")
    key_name = "servers"
    security_groups = [aws_security_group.serversg.id]
    tags = {
        Name = "Sonar"
    }
  
}


resource "aws_instance" "nexus" {
    ami = "ami-08e637cea2f053dfa"
    instance_type = "t2.medium"

    user_data = file("nexus.sh")
    key_name = "servers"
    security_groups = [aws_security_group.serversg.id]
    tags = {
        Name = "Nexus"
    }
}




