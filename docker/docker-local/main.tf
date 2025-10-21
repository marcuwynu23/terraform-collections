terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0.2"
    }
  }
}

provider "docker" {
  host = "tcp://127.0.0.1:2375"
}

# ---------------------------
# Pull Nginx Docker image
# ---------------------------
resource "docker_image" "nginx" {
  name         = "nginx"
  keep_locally = true
}
# ---------------------------
# Create Nginx container
# ---------------------------
resource "docker_container" "nginx_container" {
  name    = "terraform-nginx"
  image   = docker_image.nginx.image_id
  restart = "always"

  ports {
    internal = 80
    external = 8086
  }
}
