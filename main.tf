data "aws_ami" "ubuntu" {
  most_recent = true
  owners = ["amazon"]
  filter {
    name = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-trusty-14.04-amd64-server-20151015"]
  }
  filter {
    name = "virtualization-type"
    values = ["hvm"]
  }
  
}              
 
resource "aws_instance" "webserver" {
  ami             = data.aws_ami.ubuntu.id
  instance_type   = var.instance_type
}
