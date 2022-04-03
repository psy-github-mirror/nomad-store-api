variable "region" {
  type        = string
  default     = "us-east-1"
  description = "The region where the AMI will be made available"
}

variable "docker_username" {
  type        = string
  description = "The username for the docker registry"
}

variable "docker_password" {
  type        = string
  description = "The password for the docker registry"
}

variable "docker_image_name" {
  type        = string
  description = "The name of the docker image"
}

locals { timestamp = regex_replace(timestamp(), "[- TZ:]", "") }


source "amazon-ebs" "nomad" {
  ami_name      = "nomad-ec2-${local.timestamp}"
  instance_type = "t2.micro"
  region        = var.region

  source_ami_filter {
    filters = {
      name                = "*ubuntu-focal-20.04-amd64-minimal*"
      root-device-type    = "ebs"
      virtualization-type = "hvm"
    }
    most_recent = true
    owners      = ["679593333241"]
  }
  ssh_username = "ubuntu"
}

build {
  sources = ["source.amazon-ebs.nomad"]

  provisioner "shell" {
    environment_vars = [
      "DOCKER_USERNAME=${var.docker_username}",
      "DOCKER_PASSWORD=${var.docker_password}",
      "DOCKER_IMAGE_NAME=${var.docker_image_name}"
    ]
    script = "./setup.sh"
  }

  provisioner "file" {
    source      = "./daemon.json"
    destination = "/tmp/daemon.json"
  }

  provisioner "shell" {
    script = "./move-daemon.sh"
  }
}

