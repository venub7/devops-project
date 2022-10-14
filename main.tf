resource "aws_instance" "myec2" {
   ami = "ami-062df10d14676e201"
   instance_type = "t2.micro"

   tags = {
    Name = "HelloWorld"
  }
}
