output "web_url" {
    description = "URL of the deployed webapp"
    value = "https://${azurerm_linux_web_app.asp.default_hostname}"
}