
//Creating External Stage

# resource "snowflake_stage" "example_stage" {
#   name        = "EXAMPLE_STAGE"
#   url         = "s3://com.example.bucket/prefix"
#   database    = "EXAMPLE_DB"
#   schema      = "EXAMPLE_SCHEMA"
#   credentials = "AWS_KEY_ID='${var.example_aws_key_id}' AWS_SECRET_KEY='${var.example_aws_secret_key}'"
# }

//Creaing internal Stage
resource "snowflake_stage" "ops_stage" {
  name     = var.snowflake_stage_name_ops
  database = snowflake_database.ops_database.name
  schema   = var.snowflake_stage_schema_ops
}

resource "snowflake_stage" "sale_stage" {
  name     = var.snowflake_stage_name_sale
  database = snowflake_database.sale_database.name
  schema   = var.snowflake_stage_schema_sale
}


resource "snowflake_stage_grant" "ops_stage" {
  database_name = snowflake_database.ops_database.name
  schema_name   = var.snowflake_stage_schema_ops
  stage_name    = snowflake_stage.ops_stage.name

  privilege = "READ"

  roles = [snowflake_role.ops_role.name]
  with_grant_option = true
}