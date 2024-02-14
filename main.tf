provider    "aws"   {
    region =    "eu-west-2"
}

resources   "aws_instance"  "my-terraform-instance" {
    ami =   "ami-0e5f882be1900e43b"
    instance_type   =   "t2.micro"

    //Associate the instance with the security group
    security_groups =   [aws_security_groups.my-terraform-instance]
}


resource     "aws_security_gropup"  "my_sg" {
    name   =    "my-terrafrom-security"
    description =    "allow SSH and HTTP traffic"
}


Define ingress rule to allow SSH and HTTP traffic
ingress {
    from_port   =   22
    to_port =   22
    protocol    =   "TCP"
    cidr_blocks =   ["0.0.0.0/0"]
}

ingress {
    from_port   =   80
    to_port=    80
    protocol=   "TCP"
    cide_blocks =   ["0.0.0.0/0"]
}




