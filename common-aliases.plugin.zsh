#Author:  Angel P.
#Email:

#Alias colorsls
alias l="colorls -1"
alias lc='colorls -lA --sd'
alias ls="colorls"
alias ld="colorls -d"
alias lf="colorls -f"
alias la="colorls --all"
alias lla="la --long"
alias ll="ls --long"

alias lsd="ls  --sort-dirs"
alias lld="ll --sort-dirs"
alias lls="ll --sort-files"
alias lad="la --sort-dirs"
alias las="la --sort-files"

# [t] Sort output with recent modified first

alias lst="ls -t"
alias llt="ll -t"
alias ldt="ld -t"
alias lat="lla -t"
alias lrt="ll --report"

#Brew
alias bri="brew install"
alias brs="brew search"
alias brc="brew cleanup"

#Custom
alias cls='clear'
alias vi='vim'
alias ..='cd ..'
alias ...='cd ../..'
alias usage='du -h -d1'
alias myip="curl http://ipecho.net/plain; echo"
alias diff='colordiff'

alias update="source ~/.zshrc"
alias sshdir="cd ~/.ssh"
alias runp="lsof -i "

#Advance
alias fd='find . -type d -name'
alias ff='find . -type f -name'
alias ft='find . -type f | xargs grep'
alias ldot='ls -ld .*'

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias md="mkdir -p"

alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'

alias t='tail -f'

alias h='history'
alias help='man'
alias p='ps -f'

# Docker aliases (shortcuts)
# List all containers by status using custom format
alias dk='docker'
alias dkps='docker ps'
alias dkpsa='docker ps -a --format "table {{.Names}}\t{{.Image}}\t{{.Status}}"'
alias dknet='docker network ls'
# Removes a container, it requires the container name \ ID as parameter
alias dkrm='docker rm -f'
# Removes an image, it requires the image name \ ID as parameter
alias dkrmi='docker rmi'
# Lists all images by repository sorted by tag name
alias dkimg='docker image ls --format "table {{.Repository}}\t{{.Tag}}\t{{.ID}}" | sort'
# Lists all persistent volumes
alias dkvlm='docker volume ls'
# Diplays a container log, it requires the image name \ ID as parameter
alias dklgos='docker logs'
# Streams a container log, it requires the image name \ ID as parameter
alias dklgsf='docker logs -f'
# Initiates a session withing a container, it requires the image name \ ID as parameter followed by the word "bash"
alias dkterm='docker exec -it'#quickscan
alias analizar='python3 $HOME/.local/bin/quicksand'

#APT DEBIAN aliases

alias search='apt search'
alias install='sudo apt install'
alias remove='sudo apt remove'
alias update='sudo apt update'
# Starts a container, it requires the image name \ ID as parameter
alias dkstart='docker start'
# Stops a container, it requires the image name \ ID as parameter
alias dkstop='docker stop'

#quickscan
alias analizar='python3 $HOME/.local/bin/quicksand'

#APT DEBIAN aliases

alias search='apt search'
alias install='sudo apt install'
alias remove='sudo apt remove'
alias update='sudo apt update'

