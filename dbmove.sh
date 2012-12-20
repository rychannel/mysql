#!/bin/bash

#################################################
#
# dbmove.sh -- Moves database's from one MySQL
#	       server to another. This script
#              will not move user accounts.
#
# Usage:
#	dbmove.sh <username> <password> <origin-server> <dest-server>
#
#
# Author: Ryan Murphy <ryan.murphy@uni.edu>
# Date: 12-20-2012
#
#################################################


username=$1
password=$2
movefrom=$3
moveto=$4


dbs=`mysql -h $3 -u$1 -p$2 -Bse 'show databases' | grep dev`

for i in $dbs
do
    mysql -h $4 -u$1 -p$2 -Bse 'create database $i'
    echo "$i added to $4"
done
