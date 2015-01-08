ansible-management
==================


Usage
-----

Standard usage::

  ansible-playbook site.yaml --sudo

More-specialized usage::

  # packer.io
  sudo ansible-playbook site.yaml --connection=local

  ansible-playbook site.yaml \
    --limit=pinky,brain \
    --sudo --ask-sudo-pass \
    --skip-tags=upgrade

  ANSIBLE_HOST_KEY_CHECKING=False ansible all --module-name=ping


SSH
---

Make a keypair::

  ssh-keygen -t rsa -b 8192 -f ghost_id_rsa -C ghost@machine -N ''
  ssh-copy-id -i ghost_id_rsa ghost@machine

It may be necessary for you to control the user and port and options for ssh
when connecting to various machines.  One may wish to perform this without
having to modify the playbooks, inventories or configuration files.  The tool
ansible-playbook allows extra variables to be provided on the command line.

Some useful extra variables are::

    ansible_ssh_port=22
    ansible_ssh_user=ubuntu
