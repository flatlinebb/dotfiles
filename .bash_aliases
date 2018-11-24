#---------ALIASES---------------------------------
# Modify Existing Commands
alias ls='ls --group-directories-first -Fh --color=auto'
alias dir='dir --color=auto --group-directories-first'
alias vdir='vdir --color=auto --group-directories-first'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias ll='ls -lhF --group-directories-first'
alias la='ls -lAhF --group-directories-first'
alias l='ls -lCFh --group-directories-first'
alias vi='vim'
alias cd..='cd ..'
# alias cp='cpg -vg'  ## Only if cpg patch is installed
# alias mv='mvg -vg'  ## Only if mvg patch is installed
alias rm='rm -v'
alias du='ncdu -h'  ## Only if ncdu is installed
alias del='rm -v'
# alias df='df -hP'
alias df='pydf'  ## Only if pydf is installed
alias chmod='chmod -v'
alias chown='chown -v'
alias ln='ln -v'
alias sfv='cfv'  ## Only if cfv is installed
alias cls='clear'
alias pwgen='pwgen -cnsvB1 12 30'
alias intruders="cat /var/log/auth.log* | grep 'Failed password' | grep sshd | awk '{print $1,$2}' | sort -k 1,1M -k 2n | uniq -c"
alias psg="ps aux | grep -v grep | grep -i -e VSZ -e"
alias free="free -mt"
#alias du="du -ach | sort -h"
#alias df="df -Tha --total"
alias fhere="find . -name "
alias ..="cd .."
alias mkdir="mkdir -pv"
alias wget="wget -c"
alias histg="history | grep"
alias top="htop"
alias myip="curl http://ipecho.net/plain; echo"

# Custom Commands
alias lsd='ls -l | grep ^d'
alias space='du ~/ -s --si'
alias wspace='watch -n 60 du ~/ -s --si'
alias speed='bwm-ng'  ## Only if bwm-ng is installed
alias sshot='mplayer -ao null -vo png -ss 10 -frames 3 *.mkv'  ## Only if mplayer is installed
alias big_file='dd if=/dev/zero of=test.file count=2 bs=100M'
alias me='whoami'
alias reload='source ~/.bash_aliases && source ~/.bashrc'
alias cdeny='tail -f /var/log/denyhosts'  ## Only if denyhosts is installed
# alias please='sudo $(fc -ln -1)'  ## Appears to be broken
# See .bashrc for the genpasswd command

#---------VARIABLES-----------------------------
PATH=$PATH:$HOME/bin:.

