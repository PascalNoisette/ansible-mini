# ansible-mini

## How to use it 

### Requirement

ansible-galaxy install -r requirements.yml

### Playbook for the load balancer

ansible-playbook site.yml  -i inventory/mini --extra-vars "ansible_become_pass=XXX"

### Playbook for the backend(s)

ansible-playbook backend.yml  -i inventory/first --extra-vars "ansible_become_pass=XXX"

### Playbook to launch only one step

ansible-playbook  -T1000 -e step=provisionning/hello.yml step.yml

### Playbook to launch only one task

ansible-playbook  -T1000 -e step=provisionning/docker/hello.yml task.yml
 
## Prerequisite :

Ansible 2.9.6

Ubuntu server 18.04.1 amd64
Ubuntu server 20.04   amd64
Ubuntu Ubuntu 19.10.1 arm64
Raspbian      19.10   arm64


## Not under version control :

Define a valid ssh connection in a file inventory/mini

Import key file here provisionning/templates/private_key

Import password file here provisionning/docker/org.jdownloader.api.myjdownloader.MyJDownloaderSettings.json

Copy a backup here provisionning/letsencrypt.tgz

Generate a openvpn config (pki/...) provisionning/openvpn.tar 

Import dashboard for mega-xxl-autocomplete

## Not automated

Upload your last crontab backup and then copy the machine key to https://gitlab.com/profile/keys

Change miniflux password (admin/test123) and upload your last opml backup

Change qbittorent password (admin/adminadmin)

## TODO:

- Improve readme for "Playbook for the backend(s)" and host: management with inventory/mini
