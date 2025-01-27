variable region {
    default = "us-east-1"
    description = "Provide a region"
}

variable instance_type {
    default = "t2.micro"
}

variable key_name {
    default = "bastion-key"
}

variable instance_name {
    default = "HelloWorld"
}

variable port {
    type = list
    default = [22, 80]
}