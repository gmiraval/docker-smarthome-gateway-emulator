#!/bin/bash

echo "starting..."

echo $product_id > /manufacturer/config.txt

dbus-launch
export $(dbus-launch)
service dbus start

./alarm_manager &
./database_manager &
./protocol_manager

# Hand off to the CMD
exec "$@"
