# auto-shutdown.sh
Simple script for lowering the electricity bill

What does this script do?

This script runs every 3 minutes and scans if there is a Virtual Machine runnning. If there is no Virtual Machine running it will shutdown the machine it is running on.

Where can this script be used?

NOT IN PRODUCTION ENVIRONMENT! I use this script on the bare metal machine on my home server in order to shut it down if there are no Virtual Machines running. Then I use a Wake on Lan script in order to power it on again. The idea is to lower the electricity bill.

The run-at-startup.service unit file is used to make the script run on startup using systemd. It needs to be placed in "/usr/lib/systemd/system/" and in order for it to work the auto-shutdown.sh script needs to be in "/usr/local/bin/".

Compatibility:

This script only scans for KVM virtual machines! This script has only been tested on RHEL8!
