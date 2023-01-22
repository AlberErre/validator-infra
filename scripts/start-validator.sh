#!/bin/bash
exec solana-validator \
  --identity /home/sol/validator-keypair.json \
  --vote-account /home/sol/vote-account-keypair.json \
  # Solana Labs
  --known-validator 5D1fNXzvv5NjV1ysLjirC4WY92RNsVH18vjmcszZd8on \
  # MonkeDAO
  --known-validator dDzy5SR3AXdYWVqbDEkVFdvSPCtS9ihF5kJkHCtXoFs \
  # Certus One
  --known-validator Ft5fbkqNa76vnsjYNwjDZUXoTWpP7VYm3mtsaQckQADN \
  # SerGo
  --known-validator eoKpUABi59aT4rR9HGS3LcMecfut9x7zJyodWWP43YQ \
  # Algo|Stake
  --known-validator 9QxCLckBiJc783jnMvXZubK4wH86Eqqvashtrwvcsgkv \
  --only-known-rpc \
  --ledger ledger \
  --rpc-port 8899 \
  --dynamic-port-range 8000-8020 \
  --entrypoint entrypoint.testnet.solana.com:8001 \
  --entrypoint entrypoint2.testnet.solana.com:8001 \
  --entrypoint entrypoint3.testnet.solana.com:8001 \
  --expected-genesis-hash 4uhcVJyU9pJkvQyS88uRDiswHXSCkY3zQawwpjk2NsNY \
  --wal-recovery-mode skip_any_corrupted_record \
  --limit-ledger-size