K8s LDAP
=========

Role to create JupyterHub `deployment` and `service` and `pod` in _kubernetes_

Requirements
------------

This role assumes that the _kubernetes_ cluster is up and running.

Role Variables
--------------

None

Dependencies
------------

None

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: servers
      roles:
         - { role: AdianGPrado.k8s-jupyterhub }

License
-------

BSD, MIT
