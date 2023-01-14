# Validator infra 🏗

Ansible playbooks to set up a Solana validator

## Run

```
ansible-playbook -i inventory playbook.yaml -u root
```

```
ansible-playbook -i inventory security.yaml -u root
```

```
ansible-playbook -i inventory logging.yaml -u root
```

```
ansible-playbook -i inventory config-solana-identity.yaml -u sol
```

### Inventory

A local inventory is available at `./inventory`

### Playbook

Playbook with infra config is available at `./playbook.yaml`

#### devnet steps

https://github.com/agjell/sol-tutorials/blob/master/setting-up-a-solana-devnet-validator.md#install-ubuntu-server

#### more detailed guide

https://www.solana-validator-guidebook.com/validator-setup/initial-validator-setup

#### security

https://www.solana-validator-guidebook.com/best-practices/security-best-practices

#### official specs

https://docs.solana.com/running-validator/validator-reqs
