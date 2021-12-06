
data "azurerm_subscription" "current" {}

# get default Configure Azure Cache for Redis with private endpoints policy definition
data "azurerm_policy_definition" "azure_redis_private_link" {
    name = "Azure Cache for Redis should use private link"
}