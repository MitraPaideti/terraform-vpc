terraform {
    backend "s3" {
    region = "us-west-2"
    bucket = "ec2-pem-mithra"
    key = "mithra1.tfstate"
    }
    }