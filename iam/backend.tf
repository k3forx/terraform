terraform {
  required_version = "0.13.01"

  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "kanata"
    workspaces {
      name = "terraform"
    }
  }
}
