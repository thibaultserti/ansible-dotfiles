# Dotfiles

This repo aims to automatize the installation of my dotfiles through ansible.
Each functionnality is managed by one role.

## Roles

Here is the list playbook ans roles I use.

| Role name    | Advancement |
| ------------ | ----------- |
| zsh          | ✔️          |
| bash         | ✔️          |
| shell-common | ✔️          |
| docker       | ✔️          |
| vscode       | ✔️          |
| git          | ✔️          |
| powershell   | ✔️          |
| ssh          | ✔️          |
| gpg          | ✔️          |
| mutt         | ✔️          |
| utilitaries  | ✔️          |
| tmux         | ✔️          |
| gui          | ✔️          |
| vim          | ✔️          |
| asdf         | ✔️          |

## Playbooks

### Command for laptop

`ansible-playbook -i hosts.ini --connection=local --ask-become-pass --ask-vault-pass playbook_laptop.yml`

You can add `--tags="tag1,tag2"` to only run some tags.

### Command for servers/VM (Not yet implemented)

`ansible-playbook -i hosts.ini --connection=local --ask-become-pass --ask-vault-pass playbook_server.yml`

## Dev

### Linting

Install:

- `ansible`
- `yamllint`
- `ansible-lint`
- `ansible-galaxy`

### Modules requirements

Run `ansible-galaxy install -r requirements.txt`

### Testing

- `molecule`
