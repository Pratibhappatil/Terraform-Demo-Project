module "dev-env" {
    source = "/Users/pratibhapatil/Desktop/Learning/terraform-demo/aws_modules"
    my_env = "dev"
    ami_id = "ami-036841078a4b68e14"
    my_instance_type = "t2.micro"
    instance_count = 2
}

module "stg-env" {
    source = "/Users/pratibhapatil/Desktop/Learning/terraform-demo/aws_modules"
    my_env = "test"
    ami_id = "ami-036841078a4b68e14"
    my_instance_type = "t2.micro"
    instance_count = 2 
}
module "prd-env" {
    source = "/Users/pratibhapatil/Desktop/Learning/terraform-demo/aws_modules"
    my_env = "prod"
    ami_id = "ami-036841078a4b68e14"
    my_instance_type = "t2.micro"
    instance_count = 2

}
