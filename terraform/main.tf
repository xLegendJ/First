provider "azurerm" {
    features {}
    subscription_id = "605cab6b-28ea-4fb9-8020-cbc7e2d10b86"

}

resource "random_string" "random_string" {
    length = 5
    numeric = false
    special = false
    
}
resource "azurerm_resource_group" "rg" {
    location = var.location
    name = var.resource_group_name
}


resource "azurerm_service_plan" "name" {
    location = azurerm_resource_group.rg.location
    name = "${var.prefix}-asp"
    os_type = "Linux"
    resource_group_name = azurerm_resource_group.rg.name
    sku_name = "B1"
    
}

resource "azurerm_linux_web_app" "asp" {
    location = azurerm_resource_group.rg.location
    name = "${var.prefix}-webapp-${random_string.random_string.id}"
    resource_group_name = azurerm_resource_group.rg.name
    service_plan_id = azurerm_service_plan.name.id
    site_config {
    }
    
}