# Validator infra 🏗

Ansible playbooks to set up a Solana validator

## Run

```
ansible-playbook -i inventory playbooks/security.yaml -u root
```

```
ansible-playbook -i inventory playbooks/infra.yaml -u root
```

```
ansible-playbook -i inventory playbooks/logging.yaml -u root
```

```
ansible-playbook -i inventory playbooks/sol-user.yaml -u root
```

In case you are using a custom ssh key (not default id_rsa), use this flag with all commands:

```bash
--private-key ~/.ssh/validator_rsa
```

### Inventory

A local inventory is available at `./inventory` or `./inventory.local` (hidden local file)

### Playbook

Playbooks with infra config are available at `playbooks/` folder

---

## SSH

To connect to your validator, run the following:

```bash
ssh <user>@<ip> -i ~/.ssh/<validator_privatekey_file>
```

Note: In case you are using default ssh key (id_rsa), you can skip `-i ~/.ssh/<validator_pubkey>` flag.

---

## Debugging

Monitor validator:

```bash
solana-validator --ledger /home/sol/ledger monitor
```

Check logs files:

```bash
less -F /home/sol/log/validator.log
```

Check system validator.service logs:

```bash
journalctl -u validator.service
```

---

## Useful Information

#### Initial SSH server configuration

https://help.ubuntu.com/community/SSH/OpenSSH/Keys#Public_and_Private_Keys

#### devnet steps

https://github.com/agjell/sol-tutorials/blob/master/setting-up-a-solana-devnet-validator.md#install-ubuntu-server

#### more detailed guide

https://www.solana-validator-guidebook.com/validator-setup/initial-validator-setup

#### security

https://www.solana-validator-guidebook.com/best-practices/security-best-practices

#### official specs

https://docs.solana.com/running-validator/validator-reqs

#### Extra notes

For systemctl daemon reload (in case hot-reload services changes are made):

```
systemctl daemon-reload
```
