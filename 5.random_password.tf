resource "random_password" "password" {
  count            = 2
  length           = 16
  special          = true
  upper            = true
  lower            = true
  number           = true
  min_special      = 4
  min_upper        = 4
  min_lower        = 4
  override_special = "!@#$"
}