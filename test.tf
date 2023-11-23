# # terraform {
# #   required_providers {
# #     snowflake = {
# #       source  = "Snowflake-Labs/snowflake"
# #       version = "~> 0.68"
# #     }
# #   }
# # }
# terraform {
#   required_providers {
#     snowflake = {
#       source  = "chanzuckerberg/snowflake"
#       version = "0.25.36"
#     }
#   }
# }

# provider "snowflake"{ 
#       alias = "sys_admin" 
#       role = "SYSADMIN" 
#       region = "AWS_AP_SOUTH_1" 
#       account = "HMHMTUE.RV09349" 
#       private_key_path = "C:/Users/Pravin-Kute\rsa_key.p8" 
#       username =   "tf-snow" 
# }



# # provider "snowflake" {
# #   account  = "HMHMTUE.RV09349" # the Snowflake account identifier
# #   # user = "PRAVIN"
# #   password = "Prashant@1990"
# #   role     = "ACCOUNTADMIN"
# # }
# # resource "snowflake_database" "db" {
# #   name = "TF_DEMO"
# # }

# resource "snowflake_warehouse" "warehouse" {
#   name           = "TF_DEMO"
#   warehouse_size = "large"
#   auto_suspend   = 60
# }