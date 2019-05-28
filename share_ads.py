#!/usr/bin/python3

import boto3
import argparse

# get args
parser = argparse.ArgumentParser(
    prog=__package__,
    description='Share AWS Directory Services with target Accounts'
)
parser.add_argument('-r', '--region', required=True)
parser.add_argument('-i', '--id', required=True)
parser.add_argument('-t', '--targets', required=True)

args = parser.parse_args()

ds_client = boto3.client('ds', region_name='eu-west-1')

# get aws account id of account sharing aws directory services
account_id = boto3.client('sts').get_caller_identity().get('Account')

# return list of aws target accounts
targets = args.targets.split(',')

for target in targets:
    ds_client.share_directory(
        DirectoryId = args.id,
        ShareNotes = "Account ID: " + account_id + "DS ID: " + args.id,
        ShareTarget = {
            'Id': target,
            'Type': 'ACCOUNT'
        },
        ShareMethod = 'HANDSHAKE'
    )