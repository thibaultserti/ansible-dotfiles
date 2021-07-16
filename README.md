# Dotfiles

This repo aims to automatize the installation of my dotfiles through ansible.
Each functionnality is managed by one role.

## Roles

Here is the list playbook ans roles I use.

| Role name       | Advancement |
| --------------- | ----------- |
| zsh             | ✔️           |
| bash            | 🔜          |
| shell-common    | 🔜          |
| docker          | ❌          |
| vscode          | ❌          |
| git             | ✔️           |
| gpg             | ❌          |
| ssh             | ❌          |
| optimus-manager | ❌          |
| tmux            | ❌          |
| asdf            | ❌          |
| powershell      | ❌          |
| mutt            | ❌          |
| utilitaries     | ❌          |
| gui             | ❌          |
| vim             | ❌          |
|                 | ❌          |
|                 | ❌          |
|                 | ❌          |
|                 | ❌          |
|                 | ❌          |

# Playbooks

Execute with this

`ansible-playbook -i hosts.ini --connection=local --ask-become-pass playbook.yml`
