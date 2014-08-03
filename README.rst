ansible-wtf
===========

  ansible-playbook site.yml \
    --limit=pinky,brain \
    --sudo --ask-sudo-pass \
    --skip-tags=upgrade
