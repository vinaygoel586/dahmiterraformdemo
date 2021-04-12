        
 
resource "aws_instance" "webserver" {
  ami             = "ami-042e8287309f5df03"
  instance_type   = var.instance_type
}
