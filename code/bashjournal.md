# Bash yournal
It is a list of commands and important settings made to my linux accounts, other cool commands will be added here as well in an attempt to keep track on them and potentially consult them afterwards
## Log

### 2024.05.01-18:35@Poland/Warsaw:
 It was not possible to connect to wifi in a hoster [SportsHostek] with WPA/Personal encryption mechanism. Managed to do it by adding the following option into 

(/etc/modprobe.d/iwlwifi.conf)[/etc/modprobe.d/iwlwifi.conf]
```
options iwlwifi 11n_disable=1
```
