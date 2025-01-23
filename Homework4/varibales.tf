variable region {
    default = "us-east-1"
    description = "Provide a region"
}

variable key_name {
    default = "deployer-key"
}

variable port {
    default = [22, 80, 443]
    type = list
}

variable az {
    default = "subnet-0e7c9d8f05e64988f"
}

variable instance_type {
    default = "t2.micro"
}

variable ami_id {
    default = "ami-0df8c184d5f6ae949"
}

variable instance_name {
    default = "homework4"
}