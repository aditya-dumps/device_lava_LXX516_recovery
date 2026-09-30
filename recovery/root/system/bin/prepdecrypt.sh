#!/system/bin/sh
# Probe for Trusty IPC interface
count=0
while [ $count -lt 30 ]; do
    if [ -e /dev/trusty-ipc-dev0 ]; then
        echo "prepdecrypt: /dev/trusty-ipc-dev0 is ready"
        exit 0
    fi
    sleep 0.1
    count=$((count + 1))
done
echo "prepdecrypt: timed out waiting for trusty-ipc"
exit 1
