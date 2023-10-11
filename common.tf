locals {
  common_tags         = merge({
    environment       = "Staging"
    system            = "CALM remote state"
    automated         = "True"
  })
}
