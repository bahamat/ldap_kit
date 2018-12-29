include ../Makefile.config


DOMAIN= $(DIT_SUFFIX)
################################################################################


all: templates



templates:
	/usr/bin/sed s/__DOMAIN__/$(DOMAIN)/g autofs_local.template > autofs_local.ldif
	/usr/bin/sed s/__DOMAIN__/$(DOMAIN)/g autofs_remote.template > autofs_remote.ldif
	/usr/bin/sed s/__DOMAIN__/$(DOMAIN)/g dit-base.template \
		| /usr/bin/sed s/__NISDC__/$(NISDC)/g \
		| /usr/bin/sed s/__NISDOMAIN__/$(NISDOMAIN)/g > dit-base.ldif
	/usr/bin/sed s/__DOMAIN__/$(DOMAIN)/g dua.template \
		| /usr/bin/sed s/__LDAPSERVERS__/$(SERVERS)/ \
		| /usr/bin/sed s/__PREFSERVERS__/$(PREFSERVERS)/ > dua.ldif
	/usr/bin/sed s/__DOMAIN__/$(DOMAIN)/g proxyAgent.template \
		| /usr/bin/sed s/__PROXYPASS__/$(PROXY_PASS_HASH)/ > proxyAgent.ldif
	/usr/bin/sed s/__DOMAIN__/$(DOMAIN)/g rbac.template > rbac.ldif

	/usr/bin/sed s/__DOMAIN__/$(DOMAIN)/g mirrormode.template \
		| /usr/bin/sed s/__MIRRORMODE_PASS__/$(MIRROR_PASS_HASH)/ > mirrormode.ldif

	mkdir groups users hosts projects netgroups aliases
	/usr/bin/sed s/__DOMAIN__/$(DOMAIN)/g group.template > groups/group.copyme
	/usr/bin/sed s/__DOMAIN__/$(DOMAIN)/g user.template > users/user.copyme
	/usr/bin/sed s/__DOMAIN__/$(DOMAIN)/g host.template > hosts/host.copyme
	/usr/bin/sed s/__DOMAIN__/$(DOMAIN)/g project.template > projects/project.copyme
	/usr/bin/sed s/__DOMAIN__/$(DOMAIN)/g netgroup.template > netgroups/netgroup.copyme
	/usr/bin/sed s/__DOMAIN__/$(DOMAIN)/g aliases.template > aliases/aliases.copyme

	mkdir template
	mv *.template template
	#
	# Now start modifying LDIF's, namely DUA, proxyAgent, and mirrormode.
	#

clean:
	rm -f autofs_local.ldif autofs_remote.ldif dit-base.ldif dua.ldif \
		proxyAgent.ldif  mirrormode.ldif rbac.ldif
	rm -rf groups users hosts projects netgroups aliases
	mv template/*.template .
	rmdir template


backup:
	mkdir backups
	cp *.ldif backups


addbase:
	cp /etc/openldap/DB_CONFIG.example /var/openldap/DB_CONFIG
	chown root:openldap /var/openldap/DB_CONFIG
	chmod 440 /var/openldap/DB_CONFIG

	slapadd -l dit-base.ldif
	slapadd -l dua.ldif
	slapadd -l proxyAgent.ldif
	slapadd -l rbac.ldif
	slapadd -l mirrormode.ldif
	# Now add custom LDIF's, such as users, groups, hosts, projects, etc.
