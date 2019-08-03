# Ansible
Starting with ansible

## create-sudoer-user playbook
This is how you run it:
```
ansible-playbook playbooks/create-sudoer-user/main.yml --extra-vars "user_name=guy group=guy"
```

To get a hash for a diffrent password use python passlib:

```
python -c "from passlib.hash import sha512_crypt; import getpass; print(sha512_crypt.using(rounds=5000).hash('default-password'))"
```

