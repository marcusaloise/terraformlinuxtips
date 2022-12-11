terraform {
    required_providers {
      aws = {
          source = "hashicorp/aws"
          version = "~> 3.27"
      }
    }

    required_version = ">= 0.14.9"
}


provider "aws" {
  profile = "default"
  region  = "us-east-1"

}

provider "aws" {
  alias = "west-2"
  region = "us-west-2"
}

terraform {
  backend "s3" {
    # Lembre de trocar o bucket para o seu, não pode ser o mesmo nome
    bucket = "marcus-bucker-01"
    key    = "terraform-test.tfstate"
    region = "us-east-1"
  }
}

