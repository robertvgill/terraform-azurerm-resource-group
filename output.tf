## resource group
output "resource_group_name" {
  description = "Name of resource group created."
  value = values(azurerm_resource_group.rg)[*].name
}