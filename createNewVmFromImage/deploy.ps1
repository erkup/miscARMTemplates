$deploymentRG = Write-Host "Enter Resource Group new VM's will be deployed to:"
$VMNamePrefix = Write-Host "Enter the hostname prefix for new VM's:"
$VmImageName = Write-Host "Enter the name of the Image:"
$VmImageResourceGroup = Write-Host "Enter the Resource Group where the Image is located:"
$Network_RG = Write-Host "Enter the Resource Group where the Vnet resides:"
$Vnet = Write-Host "Enter the name of the Vnet new VM's will be added to:"
$Subnet = Write-Host "Enter the subnet new VM's will be added to:"
$NumberofVm = Write-Host "How many instances of the VM would you like created:"


New-AzResourceGroupDeployment -TemplateFile "./azuredeploy.vmImage.json" `
    -ResourceGroupName $deploymentRG -VmImageName $VmImageName -VmImageResourceGroup $VmImageResourceGroup `
    -Vnet $Vnet -Subnet $Subnet -Network_RG $Network_RG -NumberOfVm $NumberofVm -VmNamePrefix $VMNamePrefix