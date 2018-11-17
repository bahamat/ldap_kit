# Joyent LDAP Kit

This is the "Joyent LDAP Kit". It was created years ago as an attempt to make
it easier to bootstrap an LDAP infrastructure for Solaris authentication.

This kit is intended for use with OpenLDAP.

Feel free to use this for your own organization.

Found here is an OpenLDAP compatable "consolidated schema" with all the DIT
schema objects for illumos features, DIT templates for creating your base
objects, and some example content. This also includes the source for a tool to
encrypt/decrypt passwords in the format that Solaris's Native LDAP client reads
them.

The DIT created can be loaded (via slapadd) to OpenLDAP running on any
platform. The server doesn't need to run on illumos, but this DIT is capable of
supporting illumos clients.

There is additional info in <LDAP-KIT.README>.
