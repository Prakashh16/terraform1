resource "aws_dynamodb_table_item" "item2" {

    depends_on = [
        aws_dynamodb_table.my_first_table
    ]

    table_name = aws_dynamodb_table.my_first_table.name
    hash_key = aws_dynamodb_table.my_first_table.hash_key


    item = <<ITEM
    {
        "employee_id": {"S": "002"},
        "employee_first_name": {"S": "Vishal"},
        "employee_last_name": {"S": "Kumar"},
        "employee_sex": {"S": "Male"},
        "employee_phone": {"N": "9542175634"},
        "employee_location": {"S": "Lucknow"},
        "employee_salary": {"N": "16000"},
        "employee_email": {"S": "kumar.vishal@gmail.com"},
        "employee_pin":{"N": "789012"},
        "employee_country":{"S": "India"}

    }
    ITEM
}