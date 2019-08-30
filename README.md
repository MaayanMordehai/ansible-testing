# Ansible
Starting with ansible
This repository is for testing things in ansible.
There are just roles and playbooks that tests the roles.
The playbooks might not be built in a right logical way because their all purose is to test the roles.

## create-sudoer-user
This is how you run it:
```
ansible-playbook --ask-vault-pass playbooks/create-sudoer-user/main.yml 
```

Note that this playbook is using vault, so you should get your own value before running it.
To get a vault value:

```
ansible-vault encrypt_string 'password' --name 'passwd' 
```
## do-task-on-non-run-host 

This was created as a test to make sure deligate_to can be use to run on machines that are not on the hosts of the playbook. 
it can.

## add-dependency-to-service 

Adding a dependency for a service to a service.
By adding to the systemd service ini file the given service in After and Requiers

## add-hugepages-to-tuned-profile

Adding hugepages parameter to the tuned profile given.

## update-opatch

Updating the opatch (oracle database) to the latest opatch version in the given path in the given oracle home.

