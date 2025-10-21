data "http" "example" {
  url = "https://example.com"
}

resource "local_file" "html_file" {
  filename = "${path.module}/index.html"
  content  = data.http.example.response_body
}
