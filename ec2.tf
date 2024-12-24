
#key pair
resource "aws_key_pair" "deployer" {
    key_name = "terra-key.pub"
    public_key = file ("/Users/pratibhapatil/Desktop/Learning/terraform-demo/terra-key.pub")
}

#default vpc
resource "aws_default_vpc" "default" {

}

#security group > for ssh port 22 incomming outgoing traffic
resource "aws_security_group" "mysecurity" {
    name = "allow ports"
    description = "This is for ec2 deployer..."
    vpc_id = aws_default_vpc.default.id    


    ingress {
        from_port = 22
        to_port = 22
        description =" this is for ingoing traffic"
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]  #can access anywhere
    }

    egress {
        description =" this is for outgoing traffic"
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]  #can access anywhere
    }
}

resource "aws_instance" "my-instance" {
    ami = var.ami_id #copy from aws account ec2> launch instance > check ami and inst type ubuntu
    instance_type = "t2.micro"  #free tier instance
    key_name = aws_key_pair.deployer.key_name  #key for ssh
    security_groups = [aws_security_group.mysecurity.name] # sg
    tags = {
        Name = "Terra-automate-01"   #name
    }
}