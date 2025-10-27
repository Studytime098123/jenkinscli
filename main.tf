provider "aws" {
    region = "ap-south-1"  # Set your desired AWS region
}

resource "aws_instance" "example" {
    ami           = "ami-02d26659fd82cf299"  # Specify an appropriate AMI ID
    instance_type = "t2.micro"

tags = {
    Name = "jenkinscli"
  }
}
