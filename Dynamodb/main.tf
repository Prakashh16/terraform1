provider "aws" {
    profile = "default"
    region  = "ap-south-1"
}

variable "tableName" {
    type = string
    description = "Table Name"
  
}
resource "aws_dynamodb_table" "my_first_table" {
    name = var.tableName
    billing_mode = "PROVISIONED"
    read_capacity = 5
    write_capacity = 5
    hash_key = "employee_id"
    attribute {
      name = "employee_id"
      type = "S"
    }
    
    tags ={
        environment = "test-dev"
    }
  
}
output "dynamo_arn" {
    value = aws_dynamodb_table.my_first_table.arn
    description = "Dynamo DB arn"
  
}