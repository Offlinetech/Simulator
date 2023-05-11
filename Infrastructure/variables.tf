/************************************************************ Common Vars ************************************************************/

variable "PROJECT" {
  type        = string
  description = "Application to which the resources belongs to"
}

variable "LOCATION" {
  type        = string
  description = "(Required) The location where the resource group should be created. For a list of all Azure locations, please consult this link or run az account list-locations --output table."
}

variable "ENVIRONMENT" {
  type        = string
  description = "(Required) The environment of the resource group."
}

variable "CREATOR" {
  type        = string
  description = "(Required) The creator of the resource group."
}

variable "ENABLED" {
  type        = string
  description = "Whether resources are enabled or not."
}

variable "VNET_INTEGRATION_ENABLED" {
  type        = string
  description = "Whether resources are vnet enabled or not."
}

variable "PRIVATE_NETWORK_ENABLED" {
  type        = string
  description = "Whether resources are private network enabled or not."
}

/************************************************************ Locals ************************************************************/

locals {
  resource_display_names = [
    "appcs",
    "app",
    "batch",
    "batchpl",
    "evgt",
    "pip",
    "kv",
    "mserv",
    "log",
    "appi",
    "ampls",
    "vnet",
    "plan",
    "sb",
    "dash",
    "sql",
    "sqldb",
    "st",
    "blob",
    "fs",
    "pe",
    "mi",
    "gal",
    "pdnsz",
    "cdnp",
    "cdne",
    "cr"
  ]
  display_name_default = "${var.PROJECT} - %s - ${var.ENVIRONMENT}"
  tags = {
    creator     = var.CREATOR
    environment = var.ENVIRONMENT
    project     = var.PROJECT
  }

  # Static webapp positions
  static_webapps_modules = {
    #Static Web Apps 
    STAPP_LOGIN_PAGE_NAME      = 0
    STAPP_CTF_1_NAME           = 1,
    STAPP_CTF_2_NAME           = 2,
    STAPP_CRT_NAME             = 3,
    STAPP_USER_MANAGEMENT_NAME = 4,
  }

  # Functions positions
  functions_modules = {
    TABLE_VERSION = 0,
    CALCULATION   = 1,
    VALIDATION    = 2,
    MANAGEMENT    = 3,
    STORAGE       = 4
  }

  functions_modules_array = [0, 1, 2, 3, 4]

  functions_names = [
    "TableVersion",
    "Calculation",
    "Validation",
    "Management",
    "Storage"
  ]

  vnet_names = [
    "Management",
    "Functions",
    "Sql",
    "CosmosDb"
  ]

  functions_snets = [
    module.subnet_table_version_all_regions,
    module.subnet_etf_functions_calculation_all_regions,
    module.subnet_etf_functions_validation_all_regions,
    module.subnet_user_management_all_regions,
    module.subnet_etf_functions_storage_all_regions
  ]

  # functions_snets_2 = [
  #   module.subnet_user_management_1_all_regions,
  #   module.subnet_etf_functions_1_all_regions,
  #   module.subnet_etf_functions_2_all_regions,
  #   module.subnet_user_management_2_all_regions,
  #   module.subnet_etf_functions_3_all_regions 
  # ]

  vnets_modules = {
    Management = 0,
    Functions  = 1,
    Sql        = 2,
    CosmosDb   = 3
  }

  vnets_modules_array = [0, 1, 2, 3]

  regions = [
    {
      rg_name     = module.resource_group_region1.name,
      rg_location = module.resource_group_region1.location,
      rg_acronym  = "we"
    },
    {
      rg_name     = module.resource_group_region2.name,
      rg_location = module.resource_group_region2.location,
      rg_acronym  = "ne"
    }
  ]
  prd_envs = ["stg", "uat", "prd"]

  regions_acronym = [
    {
      rg01 = "we"
      rg02 = "ne"
    }
  ]

}