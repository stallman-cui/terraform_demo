resource "kubernetes_pod" "nginx" {
  metadata {
    name = "nginx-example-01"
    labels = {
      App = "nginx"
    }
  }

  spec {
    container {
      image = "nginx:1.16.1"
      name  = "example02"

      port {
        container_port = 8082
      }
    }
  }
}
