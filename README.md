Role Name
=========

A brief description of the role goes here.

Requirements
------------

Any pre-requisites that may not be covered by Ansible itself or the role should be mentioned here. For instance, if the role uses the EC2 module, it may be a good idea to mention in this section that the boto package is required.

Role Variables
--------------

A description of the settable variables for this role should go here, including any variables that are in defaults/main.yml, vars/main.yml, and any variables that can/should be set via parameters to the role. Any variables that are read from other roles and/or the global scope (ie. hostvars, group vars, etc.) should be mentioned here as well.

Dependencies
------------

No dependencies

Example Playbook
----------------

```yaml
- hosts: ansible
  user: root
  tasks:
     - name: Ensure that role are up to date
       command: ansible-galaxy install --force {{ item }}
       with_items:
          - miquelMariano.common
       when:
          - update_mode | default(False)
       tags: update
       ignore_errors: yes

- hosts: ansible
  user: root
  roles:
     - role: miquelMariano.common
```

Execute playbook
----------------

```yaml
ansible-playbook playbooks/common.yml -i inventory/servers --extra-vars "update_mode=true"
```

License
-------

BSD

Author Information
------------------

[miquelMariano.github.io](https://miquelMariano.github.io) | [Twitter](https://twitter.com/miquelMariano)