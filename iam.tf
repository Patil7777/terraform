provider    "aws"   {
    region  =  "eu-west-2" 
}


resource    "aws_iam_user" "example"    {
    name   =   "example-user"
}