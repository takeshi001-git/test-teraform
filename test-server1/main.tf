terraform {
  required_version = ">= 1.0"
  # local backend を使う場合
  backend "local" {
    path = "./terraform.tfstate"
  }
  required_providers {
    # ここで使うプロバイダを定義
  }
}

provider "null" {
  # 単純なテストに使う null プロバイダ
}

resource "null_resource" "test" {
  provisioner "local-exec" {
    command = "echo Hello, Terraform!"
  }
}
