# This is to clean up some of the nightmare windows apps you would likely not need in your corporate VDI solution

if(Get-AppxProvisionedPackage -Online | Where-Object {$_.DisplayName -like 'Microsoft.Xbox*'}|Remove-AppxProvisionedPackage -AllUsers -Online){
    Write-Host "Microsft Xbox app removed succesfully"
}
  else{
    Write-Host "Removal unsuccesful. Check individually and verbose."
  }
