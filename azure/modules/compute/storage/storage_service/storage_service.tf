# creates a instance of a storage service in Azure
resource "azure_storage_service" "demo-storage" {
    name         = "${var.storage_name}"
    location     = "${var.location}"
    description  = "Made by Terraform."
    account_type = "Standard_LRS"
}
