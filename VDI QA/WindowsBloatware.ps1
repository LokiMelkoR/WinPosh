Get-AppxProvisionedPackage -Online | Where-Object {$_.DisplayName -like 'Microsoft.Xbox*'}
Get-AppxProvisionedPackage -Online | Where-Object {$_.DisplayName -like 'Microsoft.Xbox*'} |Remove-AppxProvisionedPackage -AllUsers -Online

if(Get-AppxProvisionedPackage -Online | Where-Object {$_.DisplayName -like 'Microsoft.Xbox*'}){
    Write-Host "Microsft Xbox app removed succesfully"
}
  else{
    Write-Host "Removal unsuccesful. Check individually and verbose."
  }
