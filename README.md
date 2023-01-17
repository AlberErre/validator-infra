# Validator infra 🏗

Ansible playbooks to set up a Solana validator

## Run

```
ansible-playbook -i inventory playbooks/infra.yaml -u root
```

```
ansible-playbook -i inventory playbooks/security.yaml -u root
```

```
ansible-playbook -i inventory playbooks/logging.yaml -u root
```

```
ansible-playbook -i inventory playbooks/sol-user.yaml -u root
```

### Inventory

A local inventory is available at `./inventory` or `./inventory.local` (private file)

### Playbook

Playbooks with infra config are available at `playbooks/` folder

#### devnet steps

https://github.com/agjell/sol-tutorials/blob/master/setting-up-a-solana-devnet-validator.md#install-ubuntu-server

#### more detailed guide

https://www.solana-validator-guidebook.com/validator-setup/initial-validator-setup

#### security

https://www.solana-validator-guidebook.com/best-practices/security-best-practices

#### official specs

https://docs.solana.com/running-validator/validator-reqs

### Comments

For systemctl daemon reload (in case hot-reload services changes are made):

```
systemctl daemon-reload
```
