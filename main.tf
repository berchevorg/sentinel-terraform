terraform {
  backend "remote" {
    organization = "berchevorg"

    workspaces {
      name = "sentinel-terraform"
    }
  }
}

resource "random_pet" "name" {

  length    = "4"
  separator = "-"
}

output "out" {
  value = "${random_pet.name.id}"
}
