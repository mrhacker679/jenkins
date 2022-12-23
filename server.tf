resource "aws_instance" "jenkins" {
  ami           = "ami-0a6b2839d44d781b2"
  instance_type = "t2.medium"

  user_data = file(jenkins.sh)

  tags {
    Name = "Jenkins"
  }
}


resource "aws_instance" "sonar" {
    ami = "ami-0a6b2839d44d781b2"
    instance_type = "t2.medium"

    user_data = file(sonar.sh)

    tags {
        Name = "Sonar"
    }
  
}


resource "aws_instance" "nexus" {
    ami = "ami-08e637cea2f053dfa"
    instance_type = "t2.medium"

    user_data = file(nexus.sh)
  
    tags {
        Name = "Nexus"
    }
}

