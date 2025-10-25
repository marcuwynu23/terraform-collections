terraform {
  required_providers {
    mysql = {
      source  = "petoju/mysql"
      version = "3.0.84"
    }
  }
}

provider "mysql" {
  endpoint = "127.0.0.1:3306"
  username = "root"
  password = "root"
}


resource "mysql_database" "app" {
  name = "my_awesome_app"
}
