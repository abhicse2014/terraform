provider "aws" {
  region = "us-east-1"
  access_key = "AKIAVQNTEG3SAHFVKNGS"
  secret_key = "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"
}

resource " "my_app" {
  cidr_block       = "10.20.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name        = "abhivpc"
    environment = "${terraform.workspace}"
  }
}
