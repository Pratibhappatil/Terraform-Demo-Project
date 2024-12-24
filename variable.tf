variable "dynamo_table_name" {
  type        = string
  default     = "my_dynamo_table_01"
  description = "This is Dynamodb"
}

variable "ami_id" {
  type        = string
  default     = "ami-036841078a4b68e14"
  description = "this is ami id for ec2"
}