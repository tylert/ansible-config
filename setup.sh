#!/usr/bin/env bash

files="
ansible.cfg_SAMPLE
inventory_SAMPLE
roles/gateways/vars/main.yml_SAMPLE
"

for file in ${files}; do
  # If the file is already there, diff it.
  if [ -e ${file} ]; then
    diff ${file} ${file/_SAMPLE}

    # If we found diffs, ask the user if it ok to overwrite them.
    if [ ${?} != 0 ]; then
      cp -i ${file} ${file/_SAMPLE}
    fi
  else
    # Since the file wasn't there already, we now need to create it.
    cp -i ${file} ${file/_SAMPLE}
  fi

done
