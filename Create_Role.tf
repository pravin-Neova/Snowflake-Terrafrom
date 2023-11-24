resource "snowflake_role" "role1" {
  name    = "sales_role"
  comment = "A role to sale"
}

resource "snowflake_role" "ops_role" {
  name    = "ops_role"
  comment = "A role to oprations"
}