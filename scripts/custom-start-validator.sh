#!/bin/bash
exec solana-validator \
 --identity ~/validator-keypair.json \
 --vote-account ~/vote-account-keypair.json \
 --rpc-port 8899 \
 --entrypoint entrypoint.devnet.solana.com:8001 \
 --log ~/log/validator.log \
 --ledger ~/ledger \
 --limit-ledger-size 50000000 \
 --accounts /mnt/ramdisk/solana-accounts \
 --no-port-check \
 --only-known-rpc \
 --known-validator dv1ZAGvdsz5hHLwWXsVnM94hWf1pjbKVau1QVkaMJ92 \
 --known-validator dv2eQHeP4RFrJZ6UeiZWoc3XTtmtZCUKxxCApCDcRNV \
 --known-validator dv4ACNkpYPcE3aKmYDqZm9G5EB3J4MRoeE7WNDRBVJB \
 --known-validator dv3qDFk1DTF36Z62bNvrCXe9sKATA6xvVy6A798xxAS \
 --incremental-snapshots \
#  --halt-on-known-validators-accounts-hash-mismatch \
