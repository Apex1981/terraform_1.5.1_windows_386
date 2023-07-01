# reusable random identifier static for single environment
resource "random_string" "id" {
  length  = 10
  special = false
  upper   = false

}