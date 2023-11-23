variable "account" {
  type = string
  default = "oh38876.ap-south-1.aws"
}

variable "user" {
  type = string
  default = "tf-snow"
}
variable "password" {
  type = string
  default = "Snow@123"
}

variable "role" {
  type = string
  default = "ACCOUNTADMIN"
}

//-------------------------------Create User--------------------------------------------------------

//crete user sysadmin
variable "snowflake_sysadmin_user_name" {
  type = string
  default = "sadmin"
}
variable "snowflake_user_sysadmin_login_name" {
  type = string
  default = "snowflake_sadmin"
}
variable "snowflake_user_sysadmin_comment" {
  type = string
  default = "A user of snowflake default role sys admin"
}
variable "snowflake_user_sysadmin_password" {
  type = string
  default = "Password@123"
}
variable "snowflake_user_sysadmin_is_disabled" {
  type = bool
  default = false
}
variable "snowflake_user_sysadmin_display_name" {
  type = string
  default = "Snowflake SYSADMIN User"
}
variable "snowflake_user_sysadmin_first_name" {
  type = string
  default = "Snowflake"
}
variable "snowflake_user_sysadmin_last_name" {
  type = string
  default = "sadmin"
}
variable "snowflake_user_sysadmin_default_role" {
  type = string
  default = "SYSADMIN"
}
variable "snowflake_user_must_change_password" {
  type = bool
  default = false
}

//Crete Admin user 

variable "snowflake_user_name_admin" {
  type = string
  default = "auser"
}
variable "snowflake_user_login_name_admin" {
  type = string
  default = "snowflake_auser"
}
variable "snowflake_user_comment_admin" {
  type = string
  default ="A user of snowflake default role for User Admin"
}
variable "snowflake_user_password_admin" {
  type = string
  default = "Password@123"
}
variable "snowflake_user_is_disabled_admin" {
  type = bool
  default = false
}
variable "snowflake_user_display_name_admin" {
  type = string
  default = "Snowflake Admin User"
}
variable "snowflake_user_first_name_admin" {
  type = string
  default =  "admin user"
}
variable "snowflake_user_last_name_admin" {
  type = string
  default = "admnUser"
}
variable "snowflake_user_default_role_admin" {
  type = string
  default =  "USERADMIN"
}
variable "snowflake_user_must_change_password_admin" {
  type = bool
  default = false
}

// Create Public User Ops

variable "snowflake_user_name_ops" {
  type = string
  default = "ops_user"
}
variable "snowflake_user_login_name_ops" {
  type = string
  default = "snowflake_ops_user"
}
variable "snowflake_user_comment_ops" {
  type = string
  default = "A user of snowflake default role for Public"
}
variable "snowflake_user_password_ops" {
  type = string
  default = "Password@123"
}
variable "snowflake_user_is_disabled_ops" {
  type = bool
  default = false
}
variable "snowflake_user_display_name_ops" {
  type = string
  default = "Snowflake ops User"
}
variable "snowflake_user_first_name_ops" {
  type = string
  default = "Ops User"
}
variable "snowflake_user_last_name_ops" {
  type = string
  default = ""
}
variable "snowflake_user_default_role_ops" {
  type = string
  default = "PUBLIC"
}
variable "snowflake_user_must_change_password_ops" {
  type = bool
  default = false
}

//Create Public User Sale


variable "snowflake_user_name_sale" {
  type = string
  default = "sales_user"
}
variable "snowflake_user_login_name_sale" {
  type = string
  default = "snowflake_sales_user"
}
variable "snowflake_user_comment_sale" {
  type = string
  default = "A user of snowflake default role for Public"
}
variable "snowflake_user_password_sale" {
  type = string
  default = "Password@123"
}
variable "snowflake_user_is_disabled_sale" {
  type = bool
  default = false
}
variable "snowflake_user_display_name_sale" {
  type = string
  default = "Snowflake sales User"
}
variable "snowflake_user_first_name_sale" {
  type = string
  default = "sales User"
}
variable "snowflake_user_last_name_sale" {
  type = string
  default = ""
}
variable "snowflake_user_default_role_sale" {
  type = string
  default = "PUBLIC"
}
variable "snowflake_user_must_change_password_sale" {
  type = bool
  default = false
}

//-----------------------------------------Create DataBase------------------------------------------------

// Operations
variable "snowflake_database_name_ops" {
  type = string
  default = "ops Database 1"
}
variable "snowflake_database_comment_ops" {
  type = string
  default = "ops Database 1"
}

variable "snowflake_database_data_retention_time_in_days_ops" {
  type = number
  default = 3
}

// Sale
variable "snowflake_database_name_sale" {
  type = string
  default = "sale Database 1"
}

variable "snowflake_database_comment_sale" {
  type = string
  default =  "sale Database 1"
}

variable "snowflake_database_data_retention_time_in_days_sale" {
  type = number
  default = 3
}

//--------------------------------------------------- Create WareHouse ----------------------------------------------

# Operations
variable "snowflake_warehouse_name_ops" {
  type = string
  default = "ops_warehouse"
}

variable "snowflake_warehouse_comment_ops" {
  type = string
  default = "ops_warehouse"
}

variable "snowflake_warehouse_warehouse_size_ops" {
  type = string
  default =  "small"
}

// Sale Warehouse

variable "snowflake_warehouse_name_sale" {
  type = string
  default = "sales_warehouse"
}
variable "snowflake_warehouse_comment_sale" {
  type = string
  default = "sales_warehouse"
}
variable "snowflake_warehouse_warehouse_size_sale" {
  type = string
  default =  "small"
}

//------------------------------------------------------Create Stage -------------------------------------------------


variable "snowflake_stage_name_ops" {
  type = string
  default ="MY_STAGE_OPS"
}

variable "snowflake_stage_schema_ops" {
  type = string
  default = "PUBLIC"
}

variable "snowflake_stage_name_sale" {
  type = string
  default = "MY_STAGE_sale" 
}

variable "snowflake_stage_schema_sale" {
  type = string
  default = "PUBLIC"
}