locals {
    data = {
      name = "test"
      project = "Test"
    }
}

resource "local_file" "json_file" {
  filename = "${path.module}/data.json"
  content = jsonencode(local.data)
}