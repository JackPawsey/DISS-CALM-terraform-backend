locals {
  common_tags         = merge({
    environment       = "Staging"
    system            = "CALM remote state"
    automated         = "True"
    maintainer_email  = "jfrewer@live.co.uk"
  })
}
