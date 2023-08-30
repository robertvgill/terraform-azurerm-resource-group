## resource group
data "azurerm_resource_group" "rg" {
  count = var.resource_group_create ? 0 : 1

  name  = format("%s", var.resource_group_name)
}

resource "azurerm_resource_group" "rg" {
  for_each = var.resource_group_name

  name     = each.value.name
  location = each.value.location

  lifecycle {
    prevent_destroy = false
  }

  tags = merge({ "Resource Name" = format("%s", each.value.name) }, var.tags, )
}