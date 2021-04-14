provider "aws" {
  region     = "us-west-2"
  access_key = "my-access-key"
  secret_key = "my-secret-key"
}


provider "aws" {
	region = aws.region
	access_key = aws.my-access-key
	secret_key = aws.my-secret-key
}

resource "aws_instance" "AWSEC2Instance" {
	ami = "ami-08962a4068733a2b6"
	instance_type = "t2.micro"
	security_groups = ["launch-wizard-3"]
}
