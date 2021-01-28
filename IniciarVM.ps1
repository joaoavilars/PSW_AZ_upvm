$RG = "Grupo de recursos"
$VM = "Nome da VM"
$SUB = "ID da assinatura"
#Start-Process Powershell -Verb runAs
Set-ExecutionPolicy -ExecutionPolicy Unrestricted
Install-Module -Name AzureRM -AllowClobber
Import-Module AzureRM -UseWindowsPowerShell
Connect-AzureRmAccount
Set-AzureRmContext -SubscriptionId $SUB
Start-AzureRmVM -ResourceGroupName $RG -Name $VM