terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      # Stay on the stable v5 line to avoid v6 breaking changes
      version = "~> 5.89.0"
    }

    random = {
      source  = "hashicorp/random"
      version = "~> 3.6.3"
    }

    tls = {
      source  = "hashicorp/tls"
      version = "~> 4.0.6"
    }

    cloudinit = {
      source  = "hashicorp/cloudinit"
      version = "~> 2.3.5"
    }

    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "~> 2.31.0"
    }
  }

  backend "s3" {
    bucket = "vprofileactions575757"
    key    = "terraform.tfstate"
    region = "us-east-2"
  }

  # Keeps you on the 1.6 branch to ensure Action stability
  required_version = "~> 1.6.3"
}