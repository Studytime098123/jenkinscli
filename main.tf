provider "aws" {
    region = "ap-south-1"  # Set your desired AWS region
}

resource "aws_instance" "example" {
    ami           = "ami-0a716d3f3b16d290c"  # Specify an appropriate AMI ID
    instance_type = "t2.micro"
}
