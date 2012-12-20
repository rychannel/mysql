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


dbs=`mysql -h titan.uni.edu -u$1 -p$2 -Bse 'show databases' | grep dev`

echo $dbs

