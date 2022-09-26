#!/bin/bash

trap "echo DaisyFailure: trapped error" ERR

set -ex

echo "DaisyStatus: mounting second drive"
mount /dev/sdb1 /mnt

echo "DaisyStatus: remove offending script"
rm -rf /mnt/opt/c2d/scripts/98-enable-updates.sh

echo "DaisyStatus: unmount"
umount /mnt

echo "DaisySuccess: done"
