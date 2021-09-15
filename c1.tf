provider "aws" {
  region = "us-east-1"  
  access_key = "AKIAVQNTEG3SPO5DUVMW"
  secret_key = "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"
}


resource "aws_instance" "web" {
  ami           = "ami-087c17d1fe0178315"
  instance_type = "t2.micro"

  tags = {
    Name = "HelloWorld"
  }
}
