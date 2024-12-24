#Dynamo db table

resource "aws_dynamodb_table" "name"{
    name = "${var.my_env}-my-aws_dynamodb"
    billing_mode = "PAY_PER_REQUEST"
    hash_key = "id"
    attribute {
        name = "id"
        type = "S"
    }
}