resource "snowflake_database" "ops_database" {
 name                        = var.snowflake_database_name_ops
  comment                     = var.snowflake_database_comment_ops
  data_retention_time_in_days = var.snowflake_database_data_retention_time_in_days_ops
}


resource "snowflake_database" "sale_database" {
  name                        = var.snowflake_database_name_sale
  comment                     = var.snowflake_database_comment_sale
  data_retention_time_in_days = var.snowflake_database_data_retention_time_in_days_sale
}


resource "snowflake_database_grant" "grant" {
  database_name = snowflake_database.sale_database.name
  privilege = "USAGE"
  roles     = [snowflake_role.role1.name]
  with_grant_option = true
}

resource "snowflake_database_grant" "grant_ops" {
  database_name = snowflake_database.ops_database.name
  privilege = "USAGE"
  roles     = [snowflake_role.ops_role.name]
  with_grant_option = true
}

# resource "snowflake_database_grant" "grant_public_role" {
#   database_name = snowflake_database.ops_database.name
#   privilege = "USAGE"
#   roles     = ["PUBLIC"]
#   with_grant_option = false
# }

