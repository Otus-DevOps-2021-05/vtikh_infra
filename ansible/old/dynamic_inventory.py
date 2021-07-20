#!/usr/bin/env python

import json
from os import write


def get_state(tfstate_file, output_var):

     # fetching data from terraform state
    f = open(tfstate_file)
    data = json.load(f)
    f.close
    # parse json content
    return(data['outputs'][output_var]['value'])
    # dbserver_ip = data['outputs']['external_ip_address_db']['value']
    # dbserver_internal_ip = data['outputs']['internal_ip_address_db']['value']


def dyn_inventory (appserver_ip, dbserver_ip, dbserver_internal_ip):
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


def json_inventory (appserver_ip, dbserver_ip, dbserver_internal_ip):

    # write inventory in invetory file
    f = open('old/inventory.json', 'w')
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


if __name__ == "__main__":
    tfstate = '../../terraform/stage/terraform.tfstate'
    appserver_ip = get_state(tfstate, 'external_ip_address_app')
    dbserver_ip = get_state(tfstate, 'external_ip_address_db')
    dbserver_internal_ip = get_state(tfstate, 'internal_ip_address_db')
    dyn_inventory(appserver_ip, dbserver_ip, dbserver_internal_ip)
    json_inventory(appserver_ip, dbserver_ip, dbserver_internal_ip)
