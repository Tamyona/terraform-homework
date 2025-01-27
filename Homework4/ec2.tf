resource "aws_instance" "homework4" {
  ami           = var.ami_id
  instance_type = var.instance_type
  subnet_id = var.az
  key_name = aws_key_pair.deployer.key_name
  vpc_security_group_ids = [aws_security_group.allow_tls.id]

  tags = {
    Name = var.instance_name
  }
}