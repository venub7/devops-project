terraform {
  required_version = ">=0.12"
}
resource "aws_instance" "webserver2" {
  ami = "var.ami_id"
  instance_type = "var.instance_type"
  vpc_security_group_ids = [aws_security_group.main.id]

  user_data = <<-EOF
      #!/bin/sh
      sudo apt-get update
      sudo apt install -y apache2
      sudo systemctl status apache2
      sudo systemctl start apache2
      sudo chown -R $USER:$USER /var/www/html
      sudo echo "<html><body><h1>Hello this is module-2 at instance id `curl http://169.254.169.254/latest/meta-data/instance-id` </h1></body></html>" > /var/www/html/index.html
      EOF
}

resource "aws_security_group" "test" {
  name = "ec2-webserver-sg-1"
  description = "webserver for ec2 instances"

  ingress {
    from_port = 80
    protocol  = "TCP"
    to_port   = 80
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port = 22
    protocol  = "TCP"
    to_port   = 22
    cidr_blocks = ["10.0.0.0/24"]
  }

  egress {
    from_port = 0
    protocol  = "TCP"
    to_port   = 0
    cidr_blocks = ["0.0.0.0/0"]
  }
}