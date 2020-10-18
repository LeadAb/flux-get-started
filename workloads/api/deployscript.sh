#!/bin/bash

#this script will create the api on your cluster, but needs to execute the script using: ./deployscript.sh login pass
# where login is the login for gitlab and it's password to be abl to recognize the registry in order to pull the latest image of api.

login = $1
pass  = $2

docker login -u $login -p $pass registry.gitlab.com/ubox-group/ubox-api-src

kubectl create -f .