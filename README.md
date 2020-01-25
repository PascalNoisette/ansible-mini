# ansible-mini

ansible-galaxy install -r requirements.yml

ansible-playbook site.yml  -i inventory/mini --ask-sudo-pass

## Requirement:

Ansible 2.5.1

Ubuntu server 18.04.1 amd64
Ubuntu Ubuntu 19.10.1 arm64
Raspbian      19.10   arm64

Define a valid ssh connection in a file inventory/mini

Import key file here provisionning/templates/private_key

Import password file here provisionning/docker/org.jdownloader.api.myjdownloader.MyJDownloaderSettings.json

Copy a backup here provisionning/letsencrypt.tgz

## Not automated

Upload your last crontab backup and then copy the machine key to https://gitlab.com/profile/keys

Change miniflux password (admin/test123) and upload your last opml backup

Change qbittorent password (admin/adminadmin)

## TODO:

- test on ubuntu 20.04
