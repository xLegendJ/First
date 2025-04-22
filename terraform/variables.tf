variable "resource_group_name" {
    description = "Name of the resource group"
    default = "webapp-rg"
}

variable "location" {
    description = "Azure Region"
    default = "CentralUS"
}

variable "prefix" {
    description = "Prefix for resource names"
    default = "myapp"
}