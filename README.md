test-role
=========

[![CI](https://github.com/dtoch56/ansible-role-test/workflows/CI/badge.svg?event=push)](https://github.com/dtoch56/ansible-role-test/actions?query=workflow%3ACI)


Test host's connections

Requirements
------------

None.

Role Variables
--------------

None.

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
