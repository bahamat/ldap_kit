PATH=/opt/local/bin:/opt/local/sbin:/usr/xpg4/bin:/usr/bin:/usr/sbin:/usr/sfw/bin:/usr/openwin/bin
MANPATH=/opt/local/man:/opt/local/share/man:/usr/share/man:/usr/sfw/share/man:/usr/openwin/share/man
PAGER=less
PKG_PATH=http://pkgsrc.joyent.com/2007Q3/All
export PATH MANPATH PAGER PKG_PATH


# PS Resource Control:
alias psr='ps -e -o zone,user,pid,ppid,taskid,project,ctid,class,stime,time,args'
# PS Extreme
alias psx='ps -e -o zone,user,pid,ppid,s,vsz,rss,pmem,pcpu,stime,nlwp,args'
# PS Streamline
alias pss='ps -e -o zone,user,pid,ppid,s,pmem,pcpu,stime,nlwp,args'

# Time Aliases
alias utc='TZ=GMT /usr/bin/date +"%b %d %H:%M:%S %Z"'
alias pac='TZ=US/Pacific  /usr/bin/date +"%b %d %H:%M:%S %Z"'
alias epoch='/usr/bin/date +"%s"'


## RBAC Convinience Aliases
alias p="pfexec"
alias df="pfexec /usr/bin/df"
alias dmesg="pfexec /usr/bin/dmesg"
alias last="pfexec /usr/bin/last"
alias who="pfexec /usr/bin/who"
alias dladm="pfexec /sbin/dladm"
alias flowadm="pfexec /sbin/flowadm"
alias ifconfig="pfexec /sbin/ifconfig"
alias route="pfexec /sbin/route"
alias routeadm="pfexec /sbin/routeadm"
alias fping="pfexec /usr/bin/fping"
alias snort="pfexec /usr/bin/snort"
alias dumpcap="pfexec /usr/sbin/dumpcap"
alias quaggaadm="pfexec /usr/sbin/quaggaadm"
alias snoop="pfexec /usr/sbin/snoop"
alias tshark="pfexec /usr/sbin/tshark"
alias wireshark="pfexec /usr/sbin/wireshark"
alias zebraadm="pfexec /usr/sbin/zebraadm"
alias netstat="pfexec /usr/bin/netstat"
alias rup="pfexec /usr/bin/rup"
alias ruptime="pfexec /usr/bin/ruptime"
alias setuname="pfexec /usr/bin/setuname"
alias asppp2pppd="pfexec /usr/sbin/asppp2pppd"
alias ifconfig="pfexec /usr/sbin/ifconfig"
alias ipaddrsel="pfexec /usr/sbin/ipaddrsel"
alias ipqosconf="pfexec /usr/sbin/ipqosconf"
alias rndc="pfexec /usr/sbin/rndc"
alias route="pfexec /usr/sbin/route"
alias snoop="pfexec /usr/sbin/snoop"
alias spray="pfexec /usr/sbin/spray"
alias network-conf="pfexec /usr/share/setup-tool-backends/scripts/network-conf"
alias dladm="pfexec /sbin/dladm"
alias flowadm="pfexec /sbin/flowadm"
alias ifconfig="pfexec /sbin/ifconfig"
alias route="pfexec /sbin/route"
alias routeadm="pfexec /sbin/routeadm"
alias fping="pfexec /usr/bin/fping"
alias snort="pfexec /usr/bin/snort"
alias dumpcap="pfexec /usr/sbin/dumpcap"
alias quaggaadm="pfexec /usr/sbin/quaggaadm"
alias snoop="pfexec /usr/sbin/snoop"
alias tshark="pfexec /usr/sbin/tshark"
alias wireshark="pfexec /usr/sbin/wireshark"
alias zebraadm="pfexec /usr/sbin/zebraadm"
alias netstat="pfexec /usr/bin/netstat"
alias rup="pfexec /usr/bin/rup"
alias ruptime="pfexec /usr/bin/ruptime"
alias setuname="pfexec /usr/bin/setuname"
alias asppp2pppd="pfexec /usr/sbin/asppp2pppd"
alias ifconfig="pfexec /usr/sbin/ifconfig"
alias ipaddrsel="pfexec /usr/sbin/ipaddrsel"
alias ipqosconf="pfexec /usr/sbin/ipqosconf"
alias rndc="pfexec /usr/sbin/rndc"
alias route="pfexec /usr/sbin/route"
alias snoop="pfexec /usr/sbin/snoop"
alias spray="pfexec /usr/sbin/spray"
alias network-conf="pfexec /usr/share/setup-tool-backends/scripts/network-conf"
alias kill="pfexec /usr/bin/kill"
alias nice="pfexec /usr/bin/nice"
alias pcred="pfexec /usr/bin/pcred"
alias pfiles="pfexec /usr/bin/pfiles"
alias pflags="pfexec /usr/bin/pflags"
alias ppriv="pfexec /usr/bin/ppriv"
alias renice="pfexec /usr/bin/renice"
alias rcapadm="pfexec /usr/sbin/rcapadm"
alias crontab="pfexec /usr/bin/crontab"
alias kill="pfexec /usr/bin/kill"
alias nice="pfexec /usr/bin/nice"
alias pcred="pfexec /usr/bin/pcred"
alias pfiles="pfexec /usr/bin/pfiles"
alias pflags="pfexec /usr/bin/pflags"
alias pldd="pfexec /usr/bin/pldd"
alias pmap="pfexec /usr/bin/pmap"
alias prun="pfexec /usr/bin/prun"
alias ps="pfexec /usr/bin/ps"
alias psig="pfexec /usr/bin/psig"
alias pstack="pfexec /usr/bin/pstack"
alias pstop="pfexec /usr/bin/pstop"
alias ptime="pfexec /usr/bin/ptime"
alias ptree="pfexec /usr/bin/ptree"
alias pwait="pfexec /usr/bin/pwait"
alias pwdx="pfexec /usr/bin/pwdx"
alias renice="pfexec /usr/bin/renice"
alias truss="pfexec /usr/bin/truss"
alias fuser="pfexec /usr/sbin/fuser"
alias zfs="pfexec /sbin/zfs"
alias txzonemgr="pfexec /usr/sbin/txzonemgr"
alias zlogin="pfexec /usr/sbin/zlogin"
alias zoneadm="pfexec /usr/sbin/zoneadm"
alias zonecfg="pfexec /usr/sbin/zonecfg"
alias crontab="pfexec /usr/bin/crontab"
alias mount="pfexec /sbin/mount"
alias umount="pfexec /sbin/umount"
alias iscsiadm="pfexec /usr/sbin/iscsiadm"
alias iscsitadm="pfexec /usr/sbin/iscsitadm"
alias mpathadm="pfexec /usr/sbin/mpathadm"
alias quotacheck="pfexec /usr/sbin/quotacheck"
alias quotaoff="pfexec /usr/sbin/quotaoff"
alias quotaon="pfexec /usr/sbin/quotaon"
alias raidctl="pfexec /usr/sbin/raidctl"
alias sasinfo="pfexec /usr/sbin/sasinfo"
alias sbdadm="pfexec /usr/sbin/sbdadm"
alias stmfadm="pfexec /usr/sbin/stmfadm"
alias eject="pfexec /usr/bin/eject"
alias automountd="pfexec /usr/lib/autofs/automountd"
alias automount="pfexec /usr/lib/fs/autofs/automount"
alias showmount="pfexec /usr/lib/fs/nfs/showmount"
alias fsirand="pfexec /usr/lib/fs/ufs/fsirand"
alias newfs="pfexec /usr/lib/fs/ufs/newfs"
alias tunefs="pfexec /usr/lib/fs/ufs/tunefs"
alias clri="pfexec /usr/sbin/clri"
alias devinfo="pfexec /usr/sbin/devinfo"
alias dfmounts="pfexec /usr/sbin/dfmounts"
alias dfshares="pfexec /usr/sbin/dfshares"
alias ff="pfexec /usr/sbin/ff"
alias format="pfexec /usr/sbin/format"
alias fsck="pfexec /usr/sbin/fsck"
alias fsdb="pfexec /usr/sbin/fsdb"
alias fstyp="pfexec /usr/sbin/fstyp"
alias fuser="pfexec /usr/sbin/fuser"
#alias mkfile="pfexec /usr/sbin/mkfile"
#alias mkfs="pfexec /usr/sbin/mkfs"
alias mount="pfexec /usr/sbin/mount"
alias mountall="pfexec /usr/sbin/mountall"
alias ramdiskadm="pfexec /usr/sbin/ramdiskadm"
alias share="pfexec /usr/sbin/share"
alias shareall="pfexec /usr/sbin/shareall"
alias sharemgr="pfexec /usr/sbin/sharemgr"
alias swap="pfexec /usr/sbin/swap"
alias umount="pfexec /usr/sbin/umount"
alias umountall="pfexec /usr/sbin/umountall"
alias unshare="pfexec /usr/sbin/unshare"
alias unshareall="pfexec /usr/sbin/unshareall"
alias shares-conf="pfexec /usr/share/setup-tool-backends/scripts/shares-conf"
alias coreadm="pfexec /usr/bin/coreadm"
alias mdb="pfexec /usr/bin/mdb"
alias pcitool="pfexec /usr/sbin/pcitool"
alias ucodeadm="pfexec /usr/sbin/ucodeadm"
alias bootadm="pfexec /sbin/bootadm"
#alias init="pfexec /sbin/init"
alias date="pfexec /usr/bin/date"
alias ldd="pfexec /usr/bin/ldd"
alias mdb="pfexec /usr/bin/mdb"
alias vmstat="pfexec /usr/bin/vmstat"
alias eeprom="pfexec /usr/sbin/eeprom"
#alias halt="pfexec /usr/sbin/halt"
#alias poweroff="pfexec /usr/sbin/poweroff"
alias prtconf="pfexec /usr/sbin/prtconf"
#alias reboot="pfexec /usr/sbin/reboot"
alias syslogd="pfexec /usr/sbin/syslogd"
alias time-conf="pfexec /usr/share/setup-tool-backends/scripts/time-conf"
alias svccfg="pfexec /usr/sbin/svccfg"
alias svcs="pfexec /usr/bin/svcs"
alias svcadm="pfexec /usr/sbin/svcadm"
