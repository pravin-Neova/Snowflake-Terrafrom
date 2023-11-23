# // Create schema
# resource "snowflake_schema" "schema" {
#   database            = snowflake_database.ops_database.name
#   name                = "MY_SCHEMA"
#   data_retention_days = 1
# }

# // Example for Java language
# resource "snowflake_function" "test_funct_java" {
#   name     = "my_java_func"
#   database = "ops Database 1"
#   schema   = "MY_SCHEMA"
#   arguments {
#     name = "arg1"
#     type = "number"
#   }
#   comment     = "Example for java language"
#   return_type = "varchar"
#   language    = "java"
#   handler     = "CoolFunc.test"
#   statement   = "class CoolFunc {public static String test(int n) {return \"hello!\";}}"
# }