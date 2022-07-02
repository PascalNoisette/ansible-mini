# ansible-mini

## How to use it 

### Requirement

ansible-galaxy install -r requirements.yml

### Playbook for the load balancer

ansible-playbook site.yml  -i inventory/mini --extra-vars "ansible_become_pass=XXX"

Use --ask-become-pass or ansible_become_pass

### Playbook for the backend(s)

ansible-playbook backend.yml  -i inventory/first --extra-vars "ansible_become_pass=XXX"

### Playbook to launch only one step

ansible-playbook  -T1000 -e step=provisionning/hello.yml step.yml

### Playbook to launch only one task

ansible-playbook  -T1000 -i inventory/fifth -e step=provisionning/docker/hello.yml task.yml  
 
### Launch partial part of playbook

ansible-playbook  -T1000 --ask-become-pass -i inventory/nuc8 provisionning/lxd.yml --start-at-task="Import preseed"

## Remove socket activated service

ansible-playbook -v  -T1000 -i inventory/first -e servicename=registry-docker.service -e step=provisionning/tasks/service_remover.yml task.yml 
ansible-playbook -v  -T1000 -i inventory/first -e servicename=registry-proxy.service -e step=provisionning/tasks/service_remover.yml task.yml 
ansible-playbook -v  -T1000 -i inventory/first -e servicename=registry-proxy.socket -e step=provisionning/tasks/service_remover.yml task.yml 

## Prerequisite :

Ansible 2.9.6

Ubuntu server 18.04.1 amd64
Ubuntu server 20.04   amd64
Ubuntu Ubuntu 19.10.1 arm64
Raspbian      19.10   arm64
Ubuntu server 22.04   amd64


## Not under version control :

Define a valid ssh connection in a file inventory/mini

Import key file here provisionning/templates/private_key

Copy a backup here provisionning/letsencrypt.tgz

Generate a openvpn config (pki/...) provisionning/openvpn.tar 


## Not automated

Upload your last crontab backup and then copy the machine key to https://gitlab.com/profile/keys

Change miniflux password (admin/test123) and upload your last opml backup

Change qbittorent password (admin/adminadmin)

Change /home/pascal/vnc/passwd

Import dashboard for mega-xxl-autocomplete

Change portainer key

## TODO:

Git not working with in https ansible