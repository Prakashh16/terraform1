resource "aws_dynamodb_table_item" "item1" {

    depends_on = [
        aws_dynamodb_table.my_first_table
    ]

    table_name = aws_dynamodb_table.my_first_table.name
    hash_key = aws_dynamodb_table.my_first_table.hash_key


    item = <<ITEM
    {
        "employee_id": {"S": "001"},
        "employee_first_name": {"S": "Prakash"},
        "employee_last_name": {"S": "Mishra"},
        "employee_sex": {"S": "Male"},
        "employee_phone": {"N": "9544321234"},
        "employee_location": {"S": "Noida"},
        "employee_salary": {"N": "10000"},
        "employee_email": {"S": "mishra.prakash12@gmail.com"},
        "employee_pin":{"N": "123456"},
        "employee_country":{"S": "India"}

    }
    ITEM
}
