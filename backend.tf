terraform {
  backend "azurerm" {
    resource_group_name = "myResourceGroup"                                    # Can also be set via `ARM_USE_AZUREAD` environment variable.
    storage_account_name = "mystorageacct31938"                              # Can be passed via `-backend-config=`"storage_account_name=<storage account name>"` in the `init` command.
    container_name       = "prod-storage"                               # Can be passed via `-backend-config=`"container_name=<container name>"` in the `init` command.
    key                  = "prod.terraform.tfstate"                # Can be passed via `-backend-config=`"key=<blob key name>"` in the `init` command.
  }
}