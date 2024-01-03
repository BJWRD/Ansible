# Purpose: Script that does the following -
# 1) User ansible is created on all inventory hosts (not the control node).
# 2) User ansible is assigned a password on all inventory hosts
# 3) The ansible user is allowed to elevate privileges on all inventory hosts without having to provide a password.
# 4) After running the adhoc script on the control node as the ansible user, you should be able to SSH into all inventory hosts using the ansible user without password, as well as a run all privileged commands.
# Important: This script is to be used scrictly on dev/test hosts ONLY (not secure).

#!/bin/bash
mkdir -p /home/ansible/.ssh
touch /home/ansible/.ssh/known_hosts
ssh-keyscan ansible{1,2,3,4} /home/ansible/.ssh/known_hosts
ansible all -m user -a "name=ansible" -e "ansible_user=student ansible_password=password"
ansible all -m shell -a "echo password | passwd --stdin ansible" -e "ansible_user=student ansible_password=password"
ansible all -m shell -a 'echo "ansible ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/ansible" -e "ansible_user=student ansible_password=password"
ssh-keygen -f /home/ansible/.ssh/id_rsa -N '' <<< y
sshpass -f pass.txt ssh-copy-id ansible1
sshpass -f pass.txt ssh-copy-id ansible2
sshpass -f pass.txt ssh-copy-id ansible3
sshpass -f pass.txt ssh-copy-id ansible4

