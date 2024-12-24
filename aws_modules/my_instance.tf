#EC2 instance


resource "aws_instance" "my-instance" {
    count = var.instance_count
    ami = var.ami_id #copy from aws account ec2> launch instance > check ami and inst type ubuntu
    instance_type = var.my_instance_type #free tier instance
    tags = {
        Name = "${var.my_env}-my-instance"   #name
    }
}