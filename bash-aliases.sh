#!/bin/bash

# Colorize the ls output #
alias ls='ls --color=auto'
 
# Use a long listing format #
alias ll='ls -la'
 
# Show hidden files #
alias l.='ls -d .* --color=auto'
 
# get rid of command not found #
alias cd..='cd ..'
 
# a quick way to get out of current directory #
alias ..='cd ..'
alias ...='cd ../../../'
alias ....='cd ../../../../'
alias .....='cd ../../../../'
alias .4='cd ../../../../'
alias .5='cd ../../../../..'
 
# Colorize the grep command output for ease of use (good for log files)#
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
 
# calculator with math support
alias bc='bc -l'
 
# Generate sha1 digest
alias sha1='openssl sha1'
 
# Create parent directories on demand
alias mkdir='mkdir -pv'
 
# install  colordiff package :)
alias diff='colordiff'
 
#mount output pretty and human readable format
alias mount='mount |column -t'
 
 
# handy shortcuts #
alias h='history'
alias j='jobs -l'
 
# new set of commands
alias path='echo -e ${PATH//:/\\n}'
alias now='date +"%T'
alias nowtime=now
alias nowdate='date +"%d-%m-%Y"'
 
# vim as default
alias vi=vim
alias svi='sudo vi'
alias vis='vim "+set si"'
alias edit='vim'
 
 
# Stop after sending count ECHO_REQUEST packets #
alias ping='ping -c 5'
alias fastping='ping -c 100 -s.2'
alias ports='netstat -tulanp'
 
# replace mac with your actual server mac address #
alias wakeupnas01='/usr/bin/wakeonlan 00:11:32:11:15:FC'
alias wakeupnas02='/usr/bin/wakeonlan 00:11:32:11:15:FD'
alias wakeupnas03='/usr/bin/wakeonlan 00:11:32:11:15:FE'
 
# shortcut  for iptables and pass it via sudo#
alias ipt='sudo /sbin/iptables'
 
# display all rules #
alias iptlist='sudo /sbin/iptables -L -n -v --line-numbers'
alias iptlistin='sudo /sbin/iptables -L INPUT -n -v --line-numbers'
alias iptlistout='sudo /sbin/iptables -L OUTPUT -n -v --line-numbers'
alias iptlistfw='sudo /sbin/iptables -L FORWARD -n -v --line-numbers'
alias firewall=iptlist
 
# get web server headers #
alias header='curl -I'
 
# find out if remote server supports gzip / mod_deflate or not #
alias headerc='curl -I --compress'
 
# do not delete / or prompt if deleting more than 3 files at a time #
alias rm='rm -I --preserve-root'
 
# confirmation #
alias mv='mv -i'
alias cp='cp -i'
alias ln='ln -i'
 
# Parenting changing perms on / #
alias chown='chown --preserve-root'
alias chmod='chmod --preserve-root'
alias chgrp='chgrp --preserve-root'
 
# install with apt-get
alias apt-get="sudo apt-get"
alias updatey="sudo apt-get --yes"
 
# update on one command 
alias update='sudo apt-get update && sudo apt-get upgrade'
 
# distrp specifc RHEL/CentOS #
alias update='yum update'
alias updatey='yum -y update'
 
# become root #
alias root='sudo -i'
alias su='sudo -i'
 
# reboot / halt / poweroff
alias reboot='sudo /sbin/reboot'
alias poweroff='sudo /sbin/poweroff'
alias halt='sudo /sbin/halt'
alias shutdown='sudo /sbin/shutdown'
 
# also pass it via sudo so whoever is admin can reload it without calling you #
alias nginxreload='sudo /usr/local/nginx/sbin/nginx -s reload'
alias nginxtest='sudo /usr/local/nginx/sbin/nginx -t'
alias lightyload='sudo /etc/init.d/lighttpd reload'
alias lightytest='sudo /usr/sbin/lighttpd -f /etc/lighttpd/lighttpd.conf -t'
alias httpdreload='sudo /usr/sbin/apachectl -k graceful'
alias httpdtest='sudo /usr/sbin/apachectl -t && /usr/sbin/apachectl -t -D DUMP_VHOSTS'
 
# if cron fails or if you want backup on demand just run these commands # 
# again pass it via sudo so whoever is in admin group can start the job #
# Backup scripts #
alias backup='sudo /home/scripts/admin/scripts/backup/wrapper.backup.sh --type local --taget /raid1/backups'
alias nasbackup='sudo /home/scripts/admin/scripts/backup/wrapper.backup.sh --type nas --target nas01'
alias s3backup='sudo /home/scripts/admin/scripts/backup/wrapper.backup.sh --type nas --target nas01 --auth /home/scripts/admin/.authdata/amazon.keys'
alias rsnapshothourly='sudo /home/scripts/admin/scripts/backup/wrapper.rsnapshot.sh --type remote --target nas03 --auth /home/scripts/admin/.authdata/ssh.keys --config /home/scripts/admin/scripts/backup/config/adsl.conf'
alias rsnapshotdaily='sudo  /home/scripts/admin/scripts/backup/wrapper.rsnapshot.sh --type remote --target nas03 --auth /home/scripts/admin/.authdata/ssh.keys  --config /home/scripts/admin/scripts/backup/config/adsl.conf'
alias rsnapshotweekly='sudo /home/scripts/admin/scripts/backup/wrapper.rsnapshot.sh --type remote --target nas03 --auth /home/scripts/admin/.authdata/ssh.keys  --config /home/scripts/admin/scripts/backup/config/adsl.conf'
alias rsnapshotmonthly='sudo /home/scripts/admin/scripts/backup/wrapper.rsnapshot.sh --type remote --target nas03 --auth /home/scripts/admin/.authdata/ssh.keys  --config /home/scripts/admin/scripts/backup/config/adsl.conf'
alias amazonbackup=s3backup
 
# All of our servers eth1 is connected to the Internets via vlan / router etc  #
alias dnstop='dnstop -l 5  eth1'
alias vnstat='vnstat -i eth1'
alias iftop='iftop -i eth1'
alias tcpdump='tcpdump -i eth1'
alias ethtool='ethtool eth1'
 
# work on wlan0 by default #
# Only useful for laptop as all servers are without wireless interface
alias iwconfig='iwconfig wlan0'
 
# pass options to free # 
alias meminfo='free -m -l -t'
 
# get top process eating memory
alias psmem='ps auxf | sort -nr -k 4'
alias psmem10='ps auxf | sort -nr -k 4 | head -10'
 
# get top process eating cpu #
alias pscpu='ps auxf | sort -nr -k 3'
alias pscpu10='ps auxf | sort -nr -k 3 | head -10'
 
# Get server cpu info #
alias cpuinfo='lscpu'
 
# older system use /proc/cpuinfo #
#alias cpuinfo='less /proc/cpuinfo' #
 
# get GPU ram on desktop / laptop# 
alias gpumeminfo='grep -i --color memory /var/log/Xorg.0.log'
 
# Reboot my home Linksys WAG160N / WAG54 / WAG320 / WAG120N Router / Gateway from *nix.
alias rebootlinksys="curl -u 'admin:my-super-password' 'http://192.168.1.2/setup.cgi?todo=reboot'"
 
# Reboot tomato based Asus NT16 wireless bridge 
alias reboottomato="ssh admin@192.168.1.1 /sbin/reboot"
 
# this one saved by butt so many times #
alias wget='wget -c'
 
# this one saved by butt so many times #
alias ff4='/opt/firefox4/firefox'
alias ff13='/opt/firefox13/firefox'
alias chrome='/opt/google/chrome/chrome'
alias opera='/opt/opera/opera'
 
#default ff 
alias ff=ff13
 
#my default browser 
alias browser=chrome
 
# Do not create ssh alias, instead use ~/.ssh/config OpenSSH SSH client configuration files. 
# It offers more option. An example:
# Host server10
#   Hostname 1.2.3.4
#   IdentityFile ~/backups/.ssh/id_dsa
#   user foobar
#   Port 30000
#   ForwardX11Trusted yes
#   TCPKeepAlive yes
# You can now connect to peer1 using the following syntax:
# $ ssh server10

# set some other defaults #
alias df='df -H'
alias du='du -ch'
 
# top is atop, just like vi is vim
alias top='atop'
 
# nfsrestart  - must be root  #
# refresh nfs mount / cache etc for Apache #
alias nfsrestart='sync && sleep 2 && /etc/init.d/httpd stop && umount netapp2:/exports/http && sleep 2 && mount -o rw,sync,rsize=32768,wsize=32768,intr,hard,proto=tcp,fsc natapp2:/exports /http/var/www/html &&  /etc/init.d/httpd start'
 
# Memcached server status  #
alias mcdstats='/usr/bin/memcached-tool 10.10.27.11:11211 stats'
alias mcdshow='/usr/bin/memcached-tool 10.10.27.11:11211 display'
 
# quickly flush out memcached server #
alias flushmcd='echo "flush_all" | nc 10.10.27.11 11211'
 
# Remove assets quickly from Akamai / Amazon cdn #
alias cdndel='/home/scripts/admin/cdn/purge_cdn_cache --profile akamai'
alias amzcdndel='/home/scripts/admin/cdn/purge_cdn_cache --profile amazon'
 
# supply list of urls via file or stdin
alias cdnmdel='/home/scripts/admin/cdn/purge_cdn_cache --profile akamai --stdin'
alias amzcdnmdel='/home/scripts/admin/cdn/purge_cdn_cache --profile amazon --stdin'
 
