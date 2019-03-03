resource "azurerm_resource_group" "rg" {
  name     = "${var.resource_group_name}"
  location = "UK South"
}

resource "azurerm_container_registry" "acr" {
  name                     = "${var.container_registry_name}"
  resource_group_name      = "${azurerm_resource_group.rg.name}"
  location                 = "${azurerm_resource_group.rg.location}"
  sku                      = "Basic"
  admin_enabled            = true
}