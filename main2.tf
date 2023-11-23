terraform {
  required_providers {
    snowflake = {
      source  = "Snowflake-Labs/snowflake"
      version = "~> 0.61"
    }
  }
}

provider "snowflake" {
  account  = var.account # the Snowflake account identifier
  user     = var.user
  password = var.password
  role     = var.role
}
