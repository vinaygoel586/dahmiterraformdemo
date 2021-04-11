data "aws_ami" "ubuntu" {
  most_recent = true
  filter {
    name = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-trusty-14.04-amd64-server-20151015"]
  }
  filter {
    name = "virtualization-type"
    values = ["hvm"]
  }
  owners = ["444774854770"] # Canonical
}              
 
resource "aws_instance" "webserver" {
  ami             = data.aws_ami.ubuntu.id
  instance_type   = var.instance_type
}
