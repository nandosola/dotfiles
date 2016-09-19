alias webshare="python2.7 -c 'import SimpleHTTPServer;SimpleHTTPServer.test()'"

alias rmspecial='function _rmspecial(){ find ~/ -mount -inum $1 -exec rm -i {} \; ;}; _rmspecial'

alias rbenv_update="(echo ***ruby-build; cd ~/.rbenv/plugins/ruby-build && git pull) && (echo ***rbenv; cd ~/.rbenv && /usr/bin/git pull) && (echo ***rbenv-vars; cd ~/.rbenv/plugins/rbenv-vars && /usr/bin/git pull)"

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
