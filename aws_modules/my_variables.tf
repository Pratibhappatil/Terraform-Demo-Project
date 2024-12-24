variable "my_env" {
  type        = string
  description = "this is env for infra"
}

variable "ami_id" {
  type        = string
  description = "this is ami id"
}

variable "my_instance_type" {
  description = "The instance type for the environment"
  type        = string
}

variable "instance_count" {
  type        = number
  description = "this is count of instance ec2"
}
 