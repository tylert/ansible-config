ansible-management
==================

  ssh-keygen -t rsa -b 8192 -f id_rsa -C ghost@machine -N ''
  ssh-copy-id -i id_rsa ghost@machine

  ansible-playbook site.yml \
    --limit=pinky,brain \
    --sudo --ask-sudo-pass \
    --skip-tags=upgrade
