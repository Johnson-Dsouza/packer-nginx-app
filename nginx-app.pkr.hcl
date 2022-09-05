packer {
  # Using aws

  required_plugins {
    amazon = {
      version = ">= 0.0.2"
      source  = "github.com/hashicorp/amazon"
    }
  }
}

source "amazon-ebs" "nginx-app" {
  #which ami to use as the base

  ami_name      = "nginx-app"
  source_ami    = "ami-052efd3df9dad4825"
  instance_type = "t2.micro"
  region        = "us-east-1"
  ssh_username  = "ubuntu"
}

build {
  # everything in between
  # what to install
  # configuration
  # files to copy 

  sources = [
    "source.amazon-ebs.nginx-app"
  ]

  provisioner "shell" {
    script = "app.sh"
  }

  provisioner "file" {
    source      = "index.html"
    destination = "/tmp/"
  }

  provisioner "shell" {
    inline = ["sudo cp /tmp/index.html /var/www/html"]
  }
}