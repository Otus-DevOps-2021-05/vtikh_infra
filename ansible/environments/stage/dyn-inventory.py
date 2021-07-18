#!/usr/bin/env python

import json
from os import write

tfstate_file = '../terraform/stage/terraform.tfstate'
generate_json_inventory = False

# fetching data from terraform state
f = open(tfstate_file)
data = json.load(f)
f.close
# parse json content
appserver_ip = data['outputs']['external_ip_address_app']['value']
dbserver_ip = data['outputs']['external_ip_address_db']['value']
dbserver_internal_ip = data['outputs']['internal_ip_address_db']['value']

# print out dynamic inventory
json_out = json.dumps(  {
                            'app': {
                                'hosts':
                                    ['appserver']
                            },
                            'db': {
                                'hosts':
                                    ['dbserver']
                            },
                            '_meta': {
                                'hostvars': {
                                    'dbserver': {
                                        'ansible_host': dbserver_ip,
                                        'internal_ip': dbserver_internal_ip
                                    },
                                    'appserver': {
                                        'ansible_host': appserver_ip
                                    }
                                }
                            }
                        }, sort_keys=True, indent = 4)
print(json_out)

# write inventory in invetory file
if generate_json_inventory:
    f = open('inventory.json', 'w')
    f.write(json.dumps( {
                            'app': {
                                'hosts': {
                                    'appserver': {
                                        'ansible_host': appserver_ip
                                    }
                                }
                            },
                            'db': {
                                'hosts': {
                                    'dbserver': {
                                        'ansible_host': dbserver_ip,
                                        'internal_ip': dbserver_internal_ip
                                    }
                                }
                            }
                        }, sort_keys=True, indent = 4 ))
    f.flush
    f.close
