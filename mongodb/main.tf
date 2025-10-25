terraform {
  required_providers {
    mongodb = {
      source = "Kaginari/mongodb"
      version = "0.1.7"
    }
  }
}

# Configure the MongoDB Provider
provider "mongodb" {
  host = "127.0.0.1"
  port = "27017"
  username = "root"
  password = "root"
  auth_database = "my_database"
  
}


# resource "null_resource" "init_mongo" {
#   provisioner "local-exec" {
#     command = <<EOT
# mongosh --host 127.0.0.1 --port 27017 -u root -p root --authenticationDatabase admin <<'EOSQL'
# use my_database;
# db.createCollection("users");
# EOSQL
# EOT
#   }
# }