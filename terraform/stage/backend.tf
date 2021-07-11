# not working yet

terraform {
  required_providers {
    yandex = {
      source = "yandex-cloud/yandex"
    }
  }
  backend "s3" {
    endpoint   = "storage.yandexcloud.net"
    bucket     = "otus-learning"
    region     = "ru-central1-a"
    key        = "terraform2-states/shared.tfstate"
    # access_key = "<идентификатор статического ключа>"
    # secret_key = "<секретный ключ>"

    skip_region_validation      = true
    skip_credentials_validation = true
  }
}
