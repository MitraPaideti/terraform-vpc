terraform {
    backend "s3" {
    region = "us-west-2"
    bucket = "ec2-pem-mithra"
    key = "terraform-vpc-mitra.tfstate"
    }
    }