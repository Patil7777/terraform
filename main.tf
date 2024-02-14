provider    "aws"   {
    region =    "eu-west-2"
}

resource   "aws_instance"  "my-terraform-instance" {
    ami =   "ami-0e5f882be1900e43b"
    instance_type   =   "t2.micro"
}


resource     "aws_security_group"  "my_sg" {
    name   =    "my-terrafrom-security"
    description =    "allow ssh and http traffic"
    vpc_id  =   var.vpc_id
}


ingress {
    from_port   =   22
    to_port     =   22
    protocol    =   "TCP"
    cidr_blocks =   ["0.0.0.0/0"]
}

ingress {
    from_port   =   80
    to_port     =    80
    protocol=   "TCP"
    cide_blocks =   ["0.0.0.0/0"]
}

egress[
    from_port   =   0
    to_port     =    0
    protocol       =   "-1"
    cidr_blocks =   ["0.0.0.0/0"]
]


# Variables [
    default =   "vpc-0dd0557072ef81cd7"
]




