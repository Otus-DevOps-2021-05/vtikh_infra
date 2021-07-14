#!/usr/bin/env python

import json
from os import write

# fetching data from terraform state
f = open('../terraform/stage/terraform.tfstate')
data = json.load(f)
f.close
# parse json content
appserver_ip = data['outputs']['external_ip_address_app']['value']
dbserver_ip = data['outputs']['external_ip_address_db']['value']

# print out dynamic inventory
json_out = json.dumps({'app':{'hosts': [appserver_ip]}, 'db':{'hosts': [dbserver_ip]}}, sort_keys=True, indent = 4)
print(json_out)

# write inventory in invetory file
f = open('inventory.json', 'w')
f.write(json_out.replace('[','{').replace(']','}'))
f.flush
f.close
