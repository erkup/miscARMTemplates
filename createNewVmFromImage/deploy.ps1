$deploymentRG = Read-Host "Enter Resource Group new VM's will be deployed to"
$VMNamePrefix = Read-Host "Enter the hostname prefix for new VM's"
$VmImageName = Read-Host "Enter the name of the Image"
$VmImageResourceGroup = Read-Host "Enter the Resource Group where the Image is located"
$Network_RG = Read-Host "Enter the Resource Group where the Vnet resides"
$Vnet = Read-Host "Enter the name of the Vnet new VM's will be added to"
$Subnet = Read-Host "Enter the subnet new VM's will be added to"
$NumberofVm = Read-Host "How many instances of the VM would you like created"


New-AzResourceGroupDeployment -TemplateFile "./azuredeploy.vmImage.json" `
    -ResourceGroupName $deploymentRG -VmImageName $VmImageName -VmImageResourceGroup $VmImageResourceGroup `
    -Vnet $Vnet -Subnet $Subnet -Network_RG $Network_RG -NumberOfVm $NumberofVm -VmNamePrefix $VMNamePrefix