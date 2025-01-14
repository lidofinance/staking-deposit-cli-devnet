#!/bin/sh
set -e

# Execute the basic command
python3 ./staking_deposit/deposit.py "$@"

# mkdir /app/validator_keys_docker

# cp -rf /app/validator_keys/ /app/validator_keys_docker/

# Execute the chown command after the main command
# chown -R $UID:$GID /app/validator_keys

chmod -R 777 /app/validator_keys
