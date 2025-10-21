
resource "local_file" "file" {
    filename = "${path.module}/hello_world.txt"
    content = "Hello World!"
}