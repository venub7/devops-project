provider "aws" {
  region = "ap-south-1"
  access_key = "AKIA2Q5YB3U5MULXTLY5"
  secret_key = "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"
}

module "webserver1" {
  source = ".//module-1"
}

module "webserver2" {
  source = ".//module-2"
}