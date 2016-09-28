#!/bin/bash

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
BASE_DIR="${SCRIPT_DIR}/.."

# folders with ansible roles
rolesDir="${BASE_DIR}/roles/"

# Ansible env var with roles paths
export ANSIBLE_ROLES_PATH=${rolesDir}

# Ansible config location
export ANSIBLE_CONFIG=${BASE_DIR}/scripts/ansible.cfg

# INVENTORY can be setted with an export from command line
INVENTORY_DIR="${BASE_DIR}/inventory"
inventory=${INVENTORY:-${INVENTORY_DIR}/vagrant_inventory}

PLAYBOOKS_DIR="${BASE_DIR}/playbooks"

if [[ ${inventory} = ${INVENTORY_DIR}/vagrant_inventory ]]; then

  # When working with Vagrant locally we don't want to check the ssh key
  export ANSIBLE_HOST_KEY_CHECKING=False

  # Add directories with external ansbile roles
  roles_external="${HOME}/Projects/NRG/AnsibleRoles/"
  export ANSIBLE_ROLES_PATH=${ANSIBLE_ROLES_PATH}:${roles_external}
fi
