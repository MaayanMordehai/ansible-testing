# Ansible
Starting with ansible

## create-sudoer-user playbook
This is how you run it:
```
ansible-playbook --ask-vault-pass playbooks/create-sudoer-user/main.yml 
```

Note that this playbook is using vault, so you should get your own value before running it.
To get a vault value:

```
ansible-vault encrypt_string 'password' --name 'passwd' 
```
