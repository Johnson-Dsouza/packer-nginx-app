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
  source_ami    = "ami-06984ea821ac0a879"
  instance_type = "t2.micro"
  region        = "ap-south-1"
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

  provisioner "file" {
    source      = "Torreswebsite.zip"
    destination = "/tmp/Torreswebsite.zip"
  }

  provisioner "file" {
    source      = "server"
    destination = "/tmp/server"
  }

  provisioner "shell" {
    script = "app.sh"
  }

  provisioner "shell" {
    inline = ["sudo cp -r /tmp/Torreswebsite /var/www/", "sudo cp /tmp/server /etc/nginx/sites-enabled"]
  }
}
