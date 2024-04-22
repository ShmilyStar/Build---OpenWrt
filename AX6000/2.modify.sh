#!/usr/bin/env bash

# modify login IP
sed -i 's/192.168.1.1/192.168.1.1/g' package/base-files/files/bin/config_generate

# modify login password to 888888
#sed -i '/root/croot:$1$bHoX3Slk$YcjuVMOhDeq20ZDs8K3aM0:19835:0:99999:7:::' package/base-files/files/etc/shadow
