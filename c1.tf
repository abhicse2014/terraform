provider "aws" {
  region = "us-east-1"  
  access_key = "AKIAVQNTEG3SAHFVKNGS"
  secret_key = "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"
}


resource "aws_instance" "web" {
  ami           = "ami-087c17d1fe0178315"
  instance_type = "t2.micro"

  tags = {
    Name = "HelloWorld"
  }
}
