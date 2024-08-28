## To deploy the new storage acct
new-azdeploymentgroup -resourcegroupname shortyRG0 -templatefile "C:\Users\jonashort\OneDrive\Documents\Coding\ARM\storageAccount\shortyStorageAccount.json" -templateparameterfile "C:\Users\jonashort\OneDrive\Documents\Coding\ARM\storageAccount\shortyStorageAccountParameters.json" -mode Incremental -force -verbose

## To deploy the VM with DSC and .ps1
New-AzResourceGroupDeployment -ResourceGroupName shortyRG0 -TemplateFile "C:\Users\jonashort\OneDrive\Documents\Coding\ARM\VMwithDSC\shortyVMwDSC.json" -TemplateParameterFile "C:\Users\jonashort\OneDrive\Documents\Coding\ARM\VMwithDSC\shortyVMwDSCParameters.json" -Mode Incremental -Force -Verbose