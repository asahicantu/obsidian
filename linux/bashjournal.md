# Bash yournal
It is a list of commands and important settings made to my linux accounts, other cool commands will be added here as well in an attempt to keep track on them and potentially consult them afterwards
## Log

### 2024.05.01-18:35@Poland/Warsaw:
 It was not possible to connect to wifi in a hoster [SportsHostek] with WPA/Personal encryption mechanism. Managed to do it by adding the following option into 

(/etc/modprobe.d/iwlwifi.conf)[/etc/modprobe.d/iwlwifi.conf]
```
options iwlwifi 11n_disable=1
```
### 2024.05.01-23:50@Poland/Warsaw:
Installed github copilot cli
```bash
gh extension install copilot
gh copilot alias -- bash >> .bashrc
source .bashrc
```
Then it can be run via
```bash
ghce #gh copilot explain
ghcs #gh copilot suggest
```
### 2024.05.02-09:07@Poland/Warsaw:
Having problems with wifi, will try to change MAC address via command line
and see if network allows me to re-connect:
```bash
ip link
lan=wlp107s0 # strange name for my lan net
sudo ip link set dev $lan down
sudo ip link set dev $lan address <MAC> 
sudo install apt macchanger
macchanger -r $lan
```






