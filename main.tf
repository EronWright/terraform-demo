terraform {
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "~> 3.6"
    }
  }
}

resource "random_pet" "name" {
  length    = 2
  separator = "-"
}

resource "random_integer" "replicas" {
  min = 1
  max = 5
}

output "pet_name" {
  value = random_pet.name.id
}

output "replicas" {
  value = random_integer.replicas.result
}
