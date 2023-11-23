
# terraform {
#   required_providers {
#     snowflake = {
#       source = "chanzuckerberg/snowflake"
#       #   Snowflake-Labs/snowflake
#       version = "0.25.36"
#     }
#   }
# }
# provider "snowflake" {
#   alias            = "sys_admin"
#   role             = "SYSADMIN"
#   region           = "ap-south-1"
#   account          = "OH38876"
#   private_key_path = "C:/Users/Pravin-Kute/rsa_key.p8"
#   username         = "tf-snow"
# }
# resource "snowflake_warehouse" "star_warehouse" {
#   provider       = snowflake.sys_admin
#   name           = "STAR_WAREHOUSE"
#   warehouse_size = "XSmall"

#   auto_suspend = 60
# }
