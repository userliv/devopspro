resource "docker_image" "app_image" {
  name = "ghcr.io/userliv/devopspro:latest"
  keep_locally = true
}

resource "docker_service" "app_service" {
  name = "my-web-app"
  task_spec {
    container_spec { image = docker_image.app_image.name }
  }
  endpoint_spec {
    ports {
      target_port    = 80
      published_port = 8080
    }
  }
}