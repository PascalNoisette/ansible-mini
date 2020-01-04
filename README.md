# ansible-mini

ansible-galaxy install -r requirements.yml

ansible-playbook site.yml  -i inventory/mini --ask-sudo-pass

## Requirement:

Define a valid ssh connection in a file inventory/mini
Import key file here provisionning/docker/private_key

## TODO : determine how to retrieve :
- jd cfg folder
- certbot
- my feeds
- missing vhost (home 2)
