provider "aws"  {
region = "ap-south-1"
}
resource "aws_dynamodb_table" "example" {
  name        =  "example"
  hash_key    = "TestTableHashkey"
  range_key   = "GoodTitle"
billing_mode = "PAY_PER_REQUEST"
attribute {
  name = "GoodTitle"
  type = "S"
}
attribute {
  name = "TestTableHashkey" 
  type = "S"
} 
replica {
  region_name = "ap-south-1"
}
replica {
region_name = "us-east-1"

}
}
resource "aws_dynamodb_table" "example2" {
  name        =  "example2"
  hash_key    = "TestTableHashkey"
  range_key   = "GoodTitle"
billing_mode = "PAY_PER_REQUEST"
attribute {
  name = "GoodTitle"
  type = "S"
}
attribute {
  name = "TestTableHashkey" 
  type = "S"
} 
replica {
  region_name = "ap-south-1"
}
replica {
region_name = "us-east-1"
}
}
resource "aws_instance" "os1" {
ami = "ami-079b5e5b3971bd10d"
instance_type = "t2.micro"
}
resource "aws_ebs_volume" "myhd" {
availability_zone = "ap-south-1a"
size = 1
 tags = {
Name = "hdnew"
}
}
resource "aws_volume_attachment" "ebs_atr" {
 device_name = "/dev/sdh" 
  volume_id = "vol-054b7366f47df5da0"
  instance_id = "i-0ae9395439cbce03d"
}