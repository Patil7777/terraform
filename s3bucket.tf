provider    "aws"   {
    region  =    "eu-west-2"
}


resource    "aws_s3_bucket" "example"{
    bucket  =   "my-tf-test-bucket"

    tags    =   {
        Name    =   "my bucket"
        Enviroment  =   "dev"
    }

}


resource    "aws_s3_bucket_versioning"  "versioning_example"{
    bucket  =   aws_s3_bucket.example.id
    versioning_configuration{
        status  =   "Disabled"
    }
    
}