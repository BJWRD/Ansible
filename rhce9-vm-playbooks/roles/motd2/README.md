motd2
=========

When executed this role should do the following -

*If the managed host is in the `dev` environment the /etc/motd will display -
`Welcome to the Dev environment, this is <inventory_hostname>`

*If the managed host is in the `qual` environment the /etc/motd will display -
`Welcome to the Qual environment, this is <inventory_hostname>`

*If the managed host is in the `prod` environment the /etc/motd will display -
`Welcome to the Prod environment, this is <inventory_hostname>`

(Ensure the etc_motd2_role.yml playbook embedded within playbook_collection_5 folder is used alongside this role)