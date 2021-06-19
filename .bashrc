#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export JAVA_HOME="/usr/lib/jvm/java-7-openjdk/"

alias ls='ls --color=auto'

#PS1='\[$(fortune /usr/share/games/fortunes/n3)\]\n\u [\W] '

#PS1='\u [\W] '
#PS1="\[\e[0;37m\]┌─[\[\e[1;31m\u\e[0;37m\]]──[\e[1;31m\w\e[0;37m]\[\e[0;34m\]\[\e[1;36m\]\[\e[0;37m\]\n\[\e[0;37m\]└─╼ \[\e[1;36m\]>>> \[\e[00;00m\]"

#PS1='\u on \h at \W $ '
#PS1='[\W] λ '
#PS1=' - '

green="\001$(tput setaf 2)\002"
blue="\001$(tput setaf 4)\002"
reset="\001$(tput sgr0)\002"

longps1="$reset[$green\u " # [user
longps1+="$blue\W$reset]  " # workingdir]
longps1+="$greenλ $reset" # λ

export PS1=$longps1
unset green blue dim reset

alias v='vim'
alias elec='cd ~/Documents/Electronics'
alias eprj='cd ~/Documents/Electronics/projects/'
alias lsd='ls | tr "\n" " " | lolcat -a -d 150 -s 60'
alias desktop='scrot && mv *.png ~/Pictures/screenshots'
alias prog='cd ~/Documents/Programming/'
alias pprj='cd ~/Documents/Programming/projects/'
alias psnd='cd ~/Documents/Programming/sandbox'
alias school='cd ~/Documents/School'
alias japo='cd ~/Documents/japo/'
alias chronicle='wine ~/.wine/drive_c/users/spr/Game/Chronicle.exe'
alias weather='curl http://wttr.in/32816'
alias ucfwifi='nmcli dev wifi connect UCF_WPA2 password aniehS09!'
alias ngl='nmcli dev wifi connect NGLGames password nglgam1ng'
alias home='nmcli dev wifi connect NETGEAR36 password helpfulonion780'
alias shapes='cd ~/Documents/Programming/projects/Shapes-2*/core/src/com/github/agalonstudios/'
alias piano='cd ~/Documents/words/skills/piano'
alias blender='~/Downloads/blender/*/blender'
alias words='cd ~/Documents/words'
alias please="sudo"
alias thanks='echo "you are welcome"'
alias br='sudo vim /sys/devices/pci*/*2.0/drm/card0/*LV*/int*/brightness'
alias nm='sudo systemctl restart network-manager.service'
alias site='cd ~/Documents/Programming/projects/shintoo.github.io/'
alias ezr='cd ~/Documents/School/18-19/spring/SD2/NASA-E-RASSOR-Team'
alias astro='cd ~/Documents/astro'
alias shortps1='export PS1="\e[0;32m\]λ\e[0;37m\] "'
alias longps1='export PS1="${longps1}"'

function fcg() {
    for f in $1; do
        printf 'file: %s\n' "$f"
        cat $f | grep $2
    done
}

function cd() {
	builtin cd "$@" && ls
}

function nd() {
    mkdir "$1" && cd "$1"
}

function countdown(){
   date1=$((`date +%s` + $1)); 
   while [ "$date1" -ge `date +%s` ]; do 
       figlet "$(date -u --date @$(($date1 - `date +%s`)) +%H:%M:%S)";
     sleep 0.1
   done
}
function stopwatch(){
  date1=`date +%s`; 
   while true; do 
   figlet "$(date -u --date @$((`date +%s` - $date1)) +%H:%M:%S)"; 
    sleep 0.1
   done
}
export GTK_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
export QT_IM_MODULE=ibus

export PATH=/home/shintoo/.pyenv/bin:/home/shintoo/.bin:/home/shintoo/.local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin:/usr/lib/jvm/java-8-oracle/bin:/usr/lib/jvm/java-8-oracle/db/bin:/usr/lib/jvm/java-8-oracle/jre/bin


eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
