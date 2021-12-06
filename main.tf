resource "azurerm_subscription_policy_assignment" "azure_redis_enforce_private_endpoint" {
    name = "azure_redis_enforce_private_endpoint"
    policy_definition_id = azurerm_policy_definition.azure_redis_private_link.id
    subscription_id = data.azurerm_subscription.current.id
    display_name = "Azure Cache for Redis should use private link"

    /*parameters = jsonencode({
        "listOfAllowedLocations" : {
            "value" : var.allowed_locations,
        },
    })*/

}

/*resource "azurerm_policy_assignment" "azure_redis_enforce_private_endpoint" {
  name = "azure_redis_enforce_private_endpoint"
  scope = data.azurerm_subscription.current.id
  policy_definition_id = azurerm_policy_definition.azure_redis_private_link.id
  description = "Enforce private_endpoint for azure redis cache"
  display_name = "Azure Cache for Redis should use private link" 
}*/