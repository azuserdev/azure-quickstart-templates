Connect-AzAccount
$PSVersionTable
Get-AzSubscription
Set-AzContext -Subscription "d59a2c68-1d77-4e60-87bd-202ff1902a39" | ft

New-AzResourceGroup -Name arm-vscode -Location japaneast

New-AzResourceGroupDeployment -ResourceGroupName arm-vscode -TemplateFile ./azuredeploy.json -TemplateParameterFile ./azuredeploy.parameters.json

Remove-AzResourceGroup -Name arm-vscode

get-installedmodule -name az