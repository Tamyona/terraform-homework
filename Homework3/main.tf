provider aws {
    region = "us-east-2"
}

resource "aws_key_pair" "deployer" {
  key_name   = "Bastion-key"
  public_key = file("~/.ssh/id_rsa.pub")
}

data "aws_ami" "amazon_linux" {
  most_recent = true

  filter {
    name   = "name"
    values = ["al2023-ami-2023.6.20250115.0-kernel-6.1-x86_64"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["137112412989"]# Canonical
}

resource "aws_instance" "web-11" {
  ami           = data.aws_ami.amazon_linux.id
  instance_type = "t2.micro"
  #availability_zone = "us-east-2c"
  subnet_id = "subnet-05d945277cd775139"
  key_name = aws_key_pair.deployer.key_name
  vpc_security_group_ids = [aws_security_group.allow_tls.id]
  user_data = file("apache.sh")

  tags = {
    Name = "HelloWorld"
  }
}

resource "aws_instance" "web-2" {
  ami           = data.aws_ami.amazon_linux.id
  instance_type = "t2.micro"
  #availability_zone = "us-east-2c"
  subnet_id = "subnet-02fe531bce8bada66"
  key_name = aws_key_pair.deployer.key_name
  vpc_security_group_ids = [aws_security_group.allow_tls.id]
  user_data = file("apache.sh")

  tags = {
    Name = "HelloWorld"
  }
}

resource "aws_instance" "web-3" {
  ami           = data.aws_ami.amazon_linux.id
  instance_type = "t2.micro"
  #availability_zone = "us-east-2c"
  subnet_id = "subnet-0cc005dab87c419c1"
  key_name = aws_key_pair.deployer.key_name
  vpc_security_group_ids = [aws_security_group.allow_tls.id]
  user_data = file("apache.sh")

  tags = {
    Name = "HelloWorld"
  }
}