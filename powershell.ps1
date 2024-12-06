# Variables
$resourceGroupName = "yourResourceGroupName"
$location = "yourLocation"
$storageAccountName = "yourStorageAccountName"

# Login to Azure
Connect-AzAccount

# Create Resource Group if it doesn't exist
if (-not (Get-AzResourceGroup -Name $resourceGroupName -ErrorAction SilentlyContinue)) {
    New-AzResourceGroup -Name $resourceGroupName -Location $location
}

# Create Storage Account
$storageAccount = New-AzStorageAccount -ResourceGroupName $resourceGroupName `
    -Name $storageAccountName `
    -Location $location `
    -SkuName "Standard_LRS" `
    -Kind "StorageV2"

# Output Storage Account details
$storageAccount