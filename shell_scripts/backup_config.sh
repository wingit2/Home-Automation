# !/bin/bash

BACKUP_FILE=/home/homeassistant/.homeassistant/hass-config_$(date +"%Y%m%d_%H%M%S").zip

pushd /home/homeassistant/.homeassistant >/dev/null
zip -9 -q -r $BACKUP_FILE . -x"components/*" -x"deps/*" -x"home-assistant.db" -x"home-assistant_v2.db" -x"home-assistant.log"
popd >/dev/null

echo Backup complete: $BACKUP_FILE
