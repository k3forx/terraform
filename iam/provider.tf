variable "aws_access_key" {}
variable "aws_secret_key" {}

provider "aws" {
  # shared_credentials_file = "~/.aws/credentials"
  # profile                 = "admin-kanata"
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
  region                  = "ap-northeast-1"
  version                 = "2.62"
}
