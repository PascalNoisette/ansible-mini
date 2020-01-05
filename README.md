# ansible-mini

ansible-galaxy install -r requirements.yml

ansible-playbook site.yml  -i inventory/mini --ask-sudo-pass

## Requirement:

Define a valid ssh connection in a file inventory/mini

Import key file here provisionning/docker/private_key

Import password file here provisionning/docker/org.jdownloader.api.myjdownloader.MyJDownloaderSettings.json

Copy a backup here provisionning/letsencrypt.tgz

## Not automated

Upload your last crontab backup

Change miniflux password and upload your last opml backup

## TODO:
- test everything
