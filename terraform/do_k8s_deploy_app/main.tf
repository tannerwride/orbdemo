terraform {

  required_version = ">= 0.13"

  required_providers {
    digitalocean = {
      source = "digitalocean/digitalocean"
    }
    kubernetes = {
      source = "hashicorp/kubernetes"
      version = "1.13.3"
    }
    local = {
      source = "hashicorp/local"
    }
  }

  backend "remote" {
    organization = "cci-workshop"
    workspaces {
      name = "deploy-cicd-workshop-do"
    }
  }
}

provider "kubernetes" {
 
}