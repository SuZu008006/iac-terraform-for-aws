provider "aws" {
  access_key = TF_VAR_ACCESS_KEY
  secret_key = TF_VAR_SECRET_KEY
  region     = TF_VAR_REGION
}

resource "aws_security_group" "sg_example" {
  name = sg_example
  description = this_is_example
  vpc_id = ''
  tags = {
    Name = "example"
  }
}

resource "aws_instance" "ecs_example" {
  vpc_security_group_ids = []
  ami = "ami-030cf0a1edb8636ab"
  instance_type = "t2.micro"
  tags = {
    Name = "example"
  }
}