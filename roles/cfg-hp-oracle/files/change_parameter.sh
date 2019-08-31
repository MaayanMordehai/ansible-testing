#!/bin/bash

###################################################
# This script changing a parameter in oracle-db
#
# Parameters:
# $1 - the ORACLE_HOME of the db
# $2 - the sid of the db 
# $3 - the parameter we want to change
# $4 - the value of the parameter to change to
# $5 - the scope of the change (spfile/memory/both)
#
###################################################

export ORACLE_HOME=$1
export ORACLE_SID=$2
export PARAMETER=$3
export VALUE=$4
export SCOPE=$5

if [ -z ${ORACLE_HOME} ] | [ -z ${ORACLE_SID} ] |  [ -z ${PARAMETER} ] | [ -z ${VALUE} ] | [ -z ${SCOPE} ] 
then
    echo "One of the parameters is missing"
    echo "This script needs the following params"
    echo "first - oracle home the software location of oracle database"
    echo "second - the sid of the database to connect to"
    echo "third - the parameter you want to change"
    echo "forth - the value of the parameter to change to"
    echo "fifth - the scope of the change (spfile/memory/both)"
fi

output=`echo 'alter system set "${PARAMETER}" = "${VALUE}" scope="${SCOPE}"' | ${ORACLE_HOME}/bin/sqlplus / as sysdba`

echo output
