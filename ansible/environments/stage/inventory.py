#!/usr/bin/env python

import sys
sys.path.append('old')
import dynamic_inventory
from dynamic_inventory import get_state, dyn_inventory, json_inventory
# from ...old import dyn_inventory

if __name__ == "__main__":
    tfstate = '../terraform/stage/terraform.tfstate'
    appserver_ip = get_state(tfstate, 'external_ip_address_app')
    dbserver_ip = get_state(tfstate, 'external_ip_address_db')
    dbserver_internal_ip = get_state(tfstate, 'internal_ip_address_db')
    dyn_inventory(appserver_ip, dbserver_ip, dbserver_internal_ip)
    json_inventory(appserver_ip, dbserver_ip, dbserver_internal_ip)
