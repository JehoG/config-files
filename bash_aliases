# Always cool to have aliases
# Credits : Aliases.sh, the Internet and myself ;)

# Define a few colors
BLACK='\[\033[0;30m\]'
BLUE='\[\033[0;34m\]'
GREEN='\[\033[0;32m\]'
CYAN='\[\033[0;36m\]'
RED='\[\033[0;31m\]'
PURPLE='\[\033[0;35m\]'
BROWN='\[\033[0;33m\]'
LIGHTGRAY='\[\033[0;37m\]'
DARKGRAY='\[\033[1;30m\]'
LIGHTBLUE='\[\033[1;34m\]'
LIGHTGREEN='\[\033[1;32m\]'
LIGHTCYAN='\[\033[1;36m\]'
LIGHTRED='\[\033[1;31m\]'
LIGHTPURPLE='\[\033[1;35m\]'
YELLOW='\[\033[01;33m\]'
WHITE='\[\033[1;37m\]'
NC='\[\033[0m\]' # No Color

# Some basic stuff
PS1="$YELLOW[\$(date +%H:%M)]$LIGHTGREEN[\u$SSH_FLAG:$CYAN\w$LIGHTGREEN]\\$ $NC"

alias ls='ls -h --color=auto'
alias ll='ls -l'
alias la='ls -A'
alias l='ls -CF'
alias lt='ls -ltr'

alias df='df -h'
alias tree='tree -Csuh'
alias diskspace="du -Sh | sort -n -r |more"

# Yeah... I know
alias rm="mv -t $HOME/.local/share/Trash/files"

# Directory navigation 
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..' 

# Apt
alias ags='apt-cache search'
alias agi='sudo apt-get install'
alias agr='sudo apt-get remove'
alias agu='sudo apt-get update'

# Let's make extracting easy
extract () {
    if [ -f $1 ] ; then
      case $1 in
        *.tar.bz2)   tar xjf $1     ;;
        *.tar.gz)    tar xzf $1     ;;
        *.bz2)       bunzip2 $1     ;;
        *.rar)       unrar e $1     ;;
        *.gz)        gunzip $1      ;;
        *.tar)       tar xf $1      ;;
        *.tbz2)      tar xjf $1     ;;
        *.tgz)       tar xzf $1     ;;
        *.zip)       unzip $1       ;;
        *.Z)         uncompress $1  ;;
        *.7z)        7z x $1        ;;
        *)     echo "'$1' cannot be extracted via extract()" ;;
         esac
     else
         echo "'$1' is not a valid file"
     fi
}

# And archives too
maketar() { tar cvzf "${1%%/}.tar.gz"  "${1%%/}/"; }
makezip() { zip -r "${1%%/}.zip" "$1" ; }

## Git ##
# Beautiful git log + visualization :)
alias gl='git log --graph --full-history --all --color --abbrev-commit --pretty=format:"%x1b[31m%h%x09%x1b[32m%d%x1b[0m%x20%s%C(yellow)%d %Cgreen(%cr) %C(bold blue)<%an>%Creset"'
alias gc='git commit -am'
alias ga='git add'
alias gp='git push'
alias gst='git status'

# Get my IP
my_ip() {
    MY_IP=$(/sbin/ifconfig eth0 | awk '/inet/ { print $2 } ' |
      sed -e s/addr://)
    echo ${MY_IP:-"Not connected"}
}

# Creating a new web project
new_site() {
    if [[ $# > 0 ]]; then
        local folder="$HOME/websites/$1"
        mkdir $folder
        mkdir $folder/$2.local
        sudo chgrp -R www-data $folder
        sudo cp $HOME/my_scripts/templates/sites-available.example /etc/apache2/sites-available/$2.local
        sudo sed -i "s/path/${folder}/g" /etc/apache2/sites-available/$2.local
        sudo sed -i "s/project/${2}/g" /etc/apache2/sites-available/$2.local
        sudo ln -s /etc/apache2/sites-available/$2.local /etc/apache2/sites-enabled/.
        sudo sh -c "echo '#$1\n127.0.0.1 $2.local' >> /etc/hosts"
        sudo service apache2 reload
        echo "Done. You can now access http://$2.local" 
    else
        echo "You need a project name!"
    fi
}

# Playing some Minecraft!
alias minecraft='java -Xmx1024M -Xms512M -cp $HOME/applications/minecraft.jar net.minecraft.LauncherFrame'
