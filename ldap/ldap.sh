#!/bin/bash

set -exu

# while ! netcat -z localhost 389; do
#   sleep 1
# done

# Create the schema
ldapadd -c -H ldap://localhost:389 -x -D "cn=admin,dc=example,dc=org" -w admin -f /ldap/setup-ldap-schema.ldif

# Set user passwords to "password"

ldappasswd -H ldap://localhost:389 -x -D "cn=admin,dc=example,dc=org" -w admin -s password "uid=kant,ou=philosophs,dc=example,dc=org"
ldappasswd -H ldap://localhost:389 -x -D "cn=admin,dc=example,dc=org" -w admin -s password "uid=schopenhauer,ou=philosophs,dc=example,dc=org"
ldappasswd -H ldap://localhost:389 -x -D "cn=admin,dc=example,dc=org" -w admin -s password "uid=mozart,ou=musicians,dc=example,dc=org"
ldappasswd -H ldap://localhost:389 -x -D "cn=admin,dc=example,dc=org" -w admin -s password "uid=bach,ou=musicians,dc=example,dc=org"
ldappasswd -H ldap://localhost:389 -x -D "cn=admin,dc=example,dc=org" -w admin -s password "uid=serviceaccount,ou=it,dc=example,dc=org"