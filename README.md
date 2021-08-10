# auto-shutdown.sh
Simple script for lowering the electricity bill

What does this script do?

This script runs every 3 minutes and scans if there is a Virtual Machine runnning. If there is no Virtual Machine running it will shutdown the machine it is running on.

Where can this script be used?

NOT IN PRODUCTION ENVIRONMENT! I use this script on the bare metal machine on my home server in order to shut it down if there are no Virtual Machines running. Then I use a Wake on Lan script in order to power it on again. The idea is to lower the electricity bill.
