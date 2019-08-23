# illumos client configuration

## Security Notice

Unfortunately, I can't tell you what's correct or secure for your
infrastructure. These *should* be ok on SmartOS joyent brand zone images,
but your security is your responsibility. Neither Joyent nor any contributor
is responsible if you use these configs without reviewing them and your system
gets compromised as a result.

## Using SSL

The illumos ldap client does not support `StartTLS` so you will need to use
SSL on port 636. You will also need the CA certificate that signed your LDAP
server's certificate installed to the cert database in `/var/ldap`. See the
[`letsencrypt`](../letsencrypt) directory for an example on how to trust
[Let's Encrypt](https://www.letsencrypt).

Of course, using SSL is optional, but highly recomended.

## Configuring a client

These files go in the following locations. Compare with the default files and
edit as necessary for your environment.

File               | Location
------------------ | --------
`auto_homedir`     | `/etc/auto_homedir` (optional, if auto creating home directories)
`nsswitch.ldap`    | `/etc/nsswitch.ldap`
`pam.conf`         | `/etc/pam.conf`
`ldap_client_cred` | `/var/ldap/ldap_client_cred`
`ldap_client_file` | `/var/ldap/ldap_client_file`

For the `ldap_client_cred` file, generate the `{NS1}` hash using the
[`ns1` utility](../ns1) included with this repository.

After the configuration files are in place, start the ldap services.

    svcadm restart pfexec
    svcadm enable ldap/client

If using `auto_homedir`, start the atuto mount services.

    svcadm enable rpc/bind
    svcadm enable autofs

If everything has gone well, you should be able to log in now.
