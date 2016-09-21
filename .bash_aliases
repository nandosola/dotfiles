alias webshare="python2.7 -c 'import SimpleHTTPServer;SimpleHTTPServer.test()'"

alias rmspecial='function _rmspecial(){ find ~/ -mount -inum $1 -exec rm -i {} \; ;}; _rmspecial'

alias diff='colordiff'
alias mount='mount |column -t'
alias tstamp='date +"%Y%m%d%H%M%S"'
alias ports='netstat -tulanp'
alias top='htop'

## shortcut  for iptables and pass it via sudo#
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

## pass options to free ## 
alias meminfo='free -m -l -t'

## get top process eating memory
alias psmem='ps auxf | sort -nr -k 4'
alias psmem10='ps auxf | sort -nr -k 4 | head -10'

## get top process eating cpu ##
alias pscpu='ps auxf | sort -nr -k 3'
alias pscpu10='ps auxf | sort -nr -k 3 | head -10'

## Get server cpu info ##
alias cpuinfo='lscpu'

## older system use /proc/cpuinfo ##
##alias cpuinfo='less /proc/cpuinfo' ##

## get GPU ram on desktop / laptop## 
alias gpumeminfo='grep -i --color memory /var/log/Xorg.0.log'

alias rbenv_update='(echo ***ruby-build; cd ~/.rbenv/plugins/ruby-build && git pull) && (echo ***rbenv; cd ~/.rbenv && /usr/bin/git pull) && (echo ***rbenv-vars; cd ~/.rbenv/plugins/rbenv-vars && /usr/bin/git pull)'

alias vim_update='(cd ~/.vim/bundle; for d in `ls -1`; do (echo "***$d"; cd $d; if [ -d .git ]; then git pull; fi); done)'

alias CA="/usr/lib/ssl/misc/CA.pl"

alias myrepo='function _myrepo(){ apt-cache policy $1; }; _myrepo'
alias afk='xscreensaver-command --lock'

alias dock_stop_all="docker stop \`docker ps -a -q\`"
alias dock_rmc_all="docker rm \`docker ps -a -q\`"
alias dock_rmi_all="docker rmi \`docker images -q\`"
alias dock_rmbad="docker images | awk '/^<none>/{print \$3}' | xargs docker rmi"

alias dock_login_gdb="`aws --profile gdb ecr get-login --region us-east-1`"

alias meteo="curl -4 http://wttr.in/Malaga"
alias icanhazip="curl -4 http://icanhazip.com"

alias jrepl="java -jar ~/bin/javarepl.jar"
alias ag='ag --path-to-agignore ~/.agignore'
alias visualvm="$JAVA_HOME/bin/jvisualvm"
alias missioncontrol="$JAVA_HOME/bin/jmc"

alias ovpn-gdb="sudo /usr/sbin/openvpn --config ~/.certs/us-east-1-openvpn.conf"
alias gt="~/.rbenv/shims/gt.rb"

alias nmr="sudo service network-manager restart"
alias tor-browser="(cd ~/tools/tor-browser_en-US && ./start-tor-browser.desktop)"
