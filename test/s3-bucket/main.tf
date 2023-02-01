resource "aws_s3_bucket" "b1" {
    bucket = "s3-terraform-bucket-demo"
    acl    = "private"


    tags = {
        Name = "My bucket1211"
        Environment = "dev"

    }

}

##### Upload a single object #####

resource "aws_s3_bucket_object" "object" {
    bucket = aws_s3_bucket.b1.id
    key = "data"
    acl = "private"
    source = "/home/prakash/Videos/t.txt"
}

##### Upload a multiple objects   ####

resource "aws_s3_bucket_object" "object1" {
    for_each = fileset("/home/prakash/Pictures", "*")
    bucket = aws_s3_bucket.b1.id
    key = each.value
    source = "/home/prakash/Pictures/${each.value}"
}
