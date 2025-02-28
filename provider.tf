terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.88.0"
    }
  }
  cloud {

    organization = "Aayush8276"

    workspaces {
       tags = ["project:ChatApp"]
    }
  }
}
