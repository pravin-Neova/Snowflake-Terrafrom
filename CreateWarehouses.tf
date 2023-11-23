resource "snowflake_warehouse" "ops_warehouse" {
  name           = var.snowflake_warehouse_name_ops
  comment        = var.snowflake_warehouse_comment_ops
  warehouse_size = var.snowflake_warehouse_warehouse_size_ops
}

resource "snowflake_warehouse" "sales_warehouse" {
  name           = var.snowflake_warehouse_name_sale
  comment        = var.snowflake_warehouse_comment_sale
  warehouse_size = var.snowflake_warehouse_warehouse_size_sale
}