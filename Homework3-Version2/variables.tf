variable "az" {
    type = list(string)
    default = ["us-east-2a", "us-east-2b", "us-east-2c"]
}

variable "instance_type" {
    type = string
    default = "t2.micro"
}