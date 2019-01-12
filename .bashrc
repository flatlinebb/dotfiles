# Random Password Generator
# Usage: genpasswd <n>
genpasswd() {
  local l=$1
        [ "$l" == "" ] && l=20
        tr -dc A-Za-z0-9_ < /dev/urandom | head -c ${l} | xargs
}

# Display some useful info at login
echo
# Display your IP hostname & IP addresses
#echo
echo "        -------------------------------------------------------------------"
echo "  Hostname: `hostname`"
#echo " Your IPv4 Address:  `ifconfig | grep 'inet addr:' | grep -v 127.0.0.1 | grep -v 10.32. | grep -v 192.168. | cut -d: -f2 | cut -d' ' -f1`"
echo "        Your IPv4 Address:  `ip a | grep eth0 | grep inet |  cut -d' ' -f8`"
#echo " Your IPv4 Address:  `hostname -i`"
#echo " Your IPv6 Address:  `ifconfig | grep 'inet6 addr:' | grep -v Scope:Link | grep -v Scope:Host | cut -d: -f2- | cut -d' ' -f2`"
echo "        Your IPv6 Address:  `ip a |  grep inet6 | grep global | cut -d' ' -f6`"
#echo " Your IPv6 Address:  `hostname -I`"
echo
echo "  System information as of `date`"
echo "       `uptime`"

# Display Disk Usage at login
echo
echo "        -------------------------------------------------------------------"
echo "  Your disk usage in /home/`whoami`:"
echo "  `/usr/bin/du ~/ --si -s | awk '{printf $1} END {print "B out of 2.9TB"}'`"
echo
export TERM=xterm
alias new-pass='pwgen -cnyB1 16'
alias bwm-ng='bwm-ng -u bits -d'
# Some more alias to avoid making mistakes:
alias rm='rm -i'
alias cp='cpg -ig'
alias mv='mvg -ig'
export PATH=$PATH:.
alias df='pydf'
alias reload='source .bashrc'
alias du='ncdu'
alias cd..='cd ..'
[ -f /var/run/reboot-required ] && cat /var/run/reboot-required
