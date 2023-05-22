terraform {
    backend "s3" {
    region = "us-west-2"
    bucket = "terraform-vpc-mitra"
    key = "terraform-vpc-mitra.tfstate"
    }
    }