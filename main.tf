module "web-server1" {
  source = "./module-1"
  ami_id = "ami-051a81c2bd3e755db"
}

module "web-server2" {
  source = "./module-2"
  ami_id = "ami-051a81c2bd3e755db"
}