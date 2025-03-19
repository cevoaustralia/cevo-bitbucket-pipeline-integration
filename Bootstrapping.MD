# Bootstrapping The Helia Bitbucket Pipeline Integration Lambda

## Overview

These steps can be performed per account.

Alternately, they can be deployed to a delegated account (e.g. Shared Services) and the resulting S3 Bucket shared to other accounts via Resource Access Manager (RAM).

There is a cost advantage to deploying this Lambda Infrastructure in a delegated account.  It relies on an API Gateway or Load Balancer to serve an endpoint for the webhook to call.  These can be expensive to run and deploying in one account instead of many reduces that expense.


## Procedure

1. Deploy an S3 Bucket to contain the Lambda code triggered by the webhook
2. Build the package for the Lambda Nodejs code
3. Configure the cloudformation of the Lambda and its supporting infrastructure 
4. Deploy the cloudformation stack for the Lambda and supporting resources:
    - Destination S3 Bucket
    - API Gateway
    - etc
