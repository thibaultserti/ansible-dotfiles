# Dotfiles

This repo aims to automatize the installation of my dotfiles through ansible.
Each functionnality is managed by one role.

## Roles

Here is the list playbook ans roles I use.

| Role name       | Advancement |
| --------------- | ----------- |
| zsh             | ✔️          |
| bash            | ✔️          |
| shell-common    | ✔️          |
| docker          | ✔️          |
| vscode          | ✔️          |
| git             | ✔️          |
| powershell      | ✔️          |
| gpg             | ❌          |
| ssh             | ❌          |
| optimus-manager | ❌          |
| tmux            | ❌          |
| asdf            | ❌          |
| mutt            | ❌          |
| utilitaries     | ❌          |
| gui             | ❌          |
| vim             | ❌          |
| firefox         | ❌          |


## Playbooks

Execute with this

`ansible-playbook -i hosts.ini --connection=local --ask-become-pass playbook.yml`

## Dev

Install:

- `ansible`
- `yamllint`
- `ansible-lint`
- `ansible-galaxy`

Run `ansible-galaxy install -r requirements.txt`
