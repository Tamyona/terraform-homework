provider aws {
    region = var.region
}

resource "aws_key_pair" "deployer" {
  key_name   = "Bastion-key"
  public_key = file("~/.ssh/id_rsa.pub")
}

resource "aws_instance" "homework5" {
  ami           = var.ami_id
  instance_type = var.instance_type
  subnet_id = var.az
  key_name = aws_key_pair.deployer.key_name
  user_data = file("apache.sh")

  tags = {
    Name = var.instance_name
  }
}