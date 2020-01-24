# Hypha Ansible Roles

A library of roles for configuring Hypha's infrastructure.

## Technologies Used

- **Ansible.** Simple YML-based configuration management tool.
- **Ansible Galaxy.** Hosted repository of community-supported roles.

## Repo Layout

This a summary of this layout, which is based on [Ansible best-practices][ansible-practices].

```
hypha-ansible-roles
├── Makefile
├── README.md
├── ansible.cfg				# General ansible config file
├── environments			# Environment-specific inventory files
│   └── staging.ini
├── playbooks				# Top-level playbooks
│   ├── all-servers.yml		 	# Top-level playbook for converging all servers
│   └── mailcow.yml
├── roles_external			# Installed roles (not in git)
│   ├─── geerlingguy.github-users/ ...
│   └─── ...
├── roles_external.yml			# File specifying roles to install
└── roles_local				# Version-controlled roles
    ├── common/ ...
    └── mailcow/ ...
```

## Usage

Requirements:
- [Install][install-ansible] `ansible`
- Install `make`

We run commons commands via `make`.
Running it without any arguments will print some help text.

```
~$ make

Usage: make <command>

where <command> is one of the following:
install_roles        Install external roles from Ansible Galaxy
converge_mailcow     Converge mailcow servers from local config
```

## References

<!-- Links -->
   [install-ansible]: https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html
   [ansible-practices]: https://docs.ansible.com/ansible/latest/user_guide/playbooks_best_practices.html
