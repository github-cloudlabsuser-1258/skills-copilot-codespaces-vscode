provider "azurerm" {
  features {}
}

resource "azurerm_storage_account" "example" {
  name                     = var.storage_account_name
  resource_group_name      = var.resource_group_name
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  account_kind             = "StorageV2"
}

variable "storage_account_name" {
  description = "The name of the storage account"
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}

variable "location" {
  description = "The location/region where the storage account will be created"
  type        = string
}
```

### Explanation

1. **provider "azurerm"**: Configures the Azure Resource Manager provider.
   - **features**: This block is required but can be left empty for basic configurations.

2. **resource "azurerm_storage_account" "example"**: Defines the storage account resource.
   - **name**: The name of the storage account, which is provided as a variable.
   - **resource_group_name**: The name of the resource group, provided as a variable.
   - **location**: The location/region where the storage account will be created, provided as a variable.
   - **account_tier**: Specifies the SKU (pricing tier) of the storage account. Here, `Standard` is used.
   - **account_replication_type**: Specifies the replication type. Here, `LRS` (Locally Redundant Storage) is used.
   - **account_kind**: Specifies the kind of storage account. `StorageV2` is the general-purpose v2 storage account.

3. **variable "storage_account_name"**: Defines a variable for the storage account name.
   - **description**: Provides a description for the variable.
   - **type**: Specifies the type of the variable, which is `string`.

4. **variable "resource_group_name"**: Defines a variable for the resource group name.
   - **description**: Provides a description for the variable.
   - **type**: Specifies the type of the variable, which is `string`.

5. **variable "location"**: Defines a variable for the location.
   - **description**: Provides a description for the variable.
   - **type**: Specifies the type of the variable, which is `string`.

To deploy this configuration, you can use the following Terraform commands:

1. **Initialize the Terraform configuration:**
   ```sh
   terraform init