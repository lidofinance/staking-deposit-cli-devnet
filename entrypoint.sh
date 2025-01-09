#!/bin/sh
set -e

# Execute the basic command
python3 ./staking_deposit/deposit.py "$@"

# Execute the chown command after the main command
chown -R $UID:$GID /app/validator_keys
