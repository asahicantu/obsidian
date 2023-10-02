steps:
  - bash: echo This script could use $SYSTEM_ACCESSTOKEN
    env:
      SYSTEM_ACCESSTOKEN: $(System.AccessToken)
  - powershell: | 
      Write-Host "This is a script that could use $env:SYSTEM_ACCESSTOKEN"
      Write-Host "$env:SYSTEM_ACCESSTOKEN = $(System.AccessToken)"
    env:
      SYSTEM_ACCESSTOKEN: $(System.AccessToken)



variables:
  system.debug: 'true'


Build.SourceVersion