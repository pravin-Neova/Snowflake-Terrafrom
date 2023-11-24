

resource "snowflake_user" "sys_admin_user" {
  name                 = var.snowflake_sysadmin_user_name
  login_name           = var.snowflake_user_sysadmin_login_name
  comment              = var.snowflake_user_sysadmin_comment
  password             = var.snowflake_user_sysadmin_password
  disabled             = var.snowflake_user_sysadmin_is_disabled
  display_name         = var.snowflake_user_sysadmin_display_name
  first_name           = var.snowflake_user_sysadmin_first_name
  last_name            = var.snowflake_user_sysadmin_last_name
  default_role         = var.snowflake_user_sysadmin_default_role
  must_change_password = var.snowflake_user_must_change_password
}

resource "snowflake_user" "useradmin_user" {
  name                 =var.snowflake_user_name_admin
  login_name           = var.snowflake_user_login_name_admin
  comment              = var.snowflake_user_comment_admin
  password             =var.snowflake_user_password_admin
  disabled             =var.snowflake_user_is_disabled_admin
  display_name         = var.snowflake_user_display_name_admin
  first_name           = var.snowflake_user_first_name_admin
  last_name            = var.snowflake_user_last_name_admin
  default_role         =var.snowflake_user_default_role_admin
  must_change_password = var.snowflake_user_must_change_password_admin
}

resource "snowflake_user" "ops_public_user" {
  name                 = var.snowflake_user_name_ops
  login_name           = var.snowflake_user_login_name_ops
  comment              = var.snowflake_user_comment_ops
  password             = var.snowflake_user_password_ops
  disabled             = var.snowflake_user_is_disabled_ops
  display_name         = var.snowflake_user_display_name_ops
  first_name           =var.snowflake_user_first_name_ops
  last_name            = var.snowflake_user_last_name_ops
  default_role         = var.snowflake_user_default_role_ops
  must_change_password = var.snowflake_user_must_change_password_ops
}

resource "snowflake_user" "sales_public_user" {
   name                 = var.snowflake_user_name_sale
  login_name           = var.snowflake_user_login_name_sale
  comment              = var.snowflake_user_comment_sale
  password             = var.snowflake_user_password_sale
  disabled             = var.snowflake_user_is_disabled_sale
  display_name         = var.snowflake_user_display_name_sale
  first_name           =var.snowflake_user_first_name_sale
  last_name            = var.snowflake_user_last_name_sale
  default_role         = var.snowflake_user_default_role_sale
  must_change_password = var.snowflake_user_must_change_password_sale
}

// Assign sales role to public user sale 
resource "snowflake_role_grants" "grants" {
  role_name = snowflake_role.role1.name
  users = [
    snowflake_user.sales_public_user.name
  ]

}

// Assign opration role to public user ops
resource "snowflake_role_grants" "grants_ops" {
  role_name = snowflake_role.ops_role.name
  users = [
    snowflake_user.ops_public_user.name
  ]
}