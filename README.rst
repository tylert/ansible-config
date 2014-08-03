ansible-wtf
===========

  ansible-playbook \
    --sudo --ask-sudo-pass
    site.yml

  ansible-playbook \
    --sudo --ask-sudo-pass --user manager --private-key-file=manager_id_rsa \
    --limit=parsnip \
    roles/common/tasks/dist-upgrade.yml
