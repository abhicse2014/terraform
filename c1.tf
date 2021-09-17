terraform {
  backend "s3" {
    bucket = "abhi123buckets"
    key = "remote.tfstate"
    region = "us-east-1"
    shared_credentials_file = "/credentials"

  }
}


provider "aws" {
  region = "us-east-1"  
   shared_credentials_file = "/credentials"
    profile = "default"
}




resource "aws_instance" "web" {
  ami           = "ami-087c17d1fe0178315"
  instance_type = "t2.micro"

  tags = {
    Name = "HelloWorld"
  }
}
