test-role
=========

[![CI](https://github.com/dtoch56/ansible-role-test/workflows/CI/badge.svg?event=push)](https://github.com/dtoch56/ansible-role-test/actions?query=workflow%3ACI)


Test host's connections

Requirements
------------

None.

Role Variables
--------------

Available variables are listed below, along with default values (see defaults/main.yml):

| Variable         | Description                                                          | Default  |
| ---------------- |:--------------------------------------------------------------------:| --------:|
| ssh_port         | Ssh-server listening port                                            | 22       |
| ssh_ansible_user | Account for Ansible                                                  | ansible  |
| ssh_users        | List of accounts to accept incoming SSH connections                  | {}       |


Dependencies
------------

None.

Example Playbook
----------------

    - hosts: servers
      roles:
        - { role: dtoch56.test }

License
-------

MIT / BSD

Author Information
------------------

This role was created in 2021 by DToch.

Development
------------------

    pip install pipenv
    pipenv install
