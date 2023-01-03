#! /bin/bash
set -e
. activate.sh
# hack to prevent an error
touch ./managed_components/espressif__fmt/.component_hash
rm ./managed_components/espressif__fmt/.component_hash
idf.py build
echo
echo Now run ./deploy.sh to flash the firmware
echo