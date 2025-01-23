resource "aws_instance" "homework4" {
  ami           = var.ami_id
  instance_type = var.instance_type
  subnet_id = var.az
  vpc_security_group_ids = [aws_security_group.allow_tls.id]

  tags = {
    Name = "HelloWorld"
  }
}