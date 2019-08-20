# Using Let's Encrypt

It's recomended to use Let's Encrypt for your LDAP server. For illumos' LDAP
client to trust Let's Encrypt, run `generate_trust_store.sh` then copy `*.db`
to `/var/ldap` on all LDAP client hosts.
