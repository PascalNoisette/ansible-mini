# ansible-mini

ansible-galaxy install -r requirements.yml

ansible-playbook site.yml  -i inventory/mini --ask-sudo-pass

## Requirement:

Define a valid ssh connection in a file inventory/mini
Import key file here provisionning/docker/private_key
Copy a backup here provisionning/letsencrypt.tgz

## TODO : determine how to retrieve :
- jd cfg folder
- my feeds
- crontab
- drop
- test port 80 for hidden service
- test everything
