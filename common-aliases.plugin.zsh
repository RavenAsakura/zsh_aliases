# Advanced Aliases.
# Use with caution

#Author:  Angel P.
#Email: wastelandss@icloud.com
##Custom  Scan

alias cat='batcat'

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

 ##For OSX
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


alias zshrc='${=EDITOR} ${ZDOTDIR:-$HOME}/.zshrc' # Quick access to the .zshrc file

alias grep='grep --color'
alias sgrep='grep -R -n -H -C 5 --exclude-dir={.git,.svn,CVS} '

alias t='tail -f'

# Command line head / tail shortcuts
alias -g H='| head'
alias -g T='| tail'
alias -g G='| grep'
alias -g L="| less"
alias -g M="| most"
alias -g LL="2>&1 | less"
alias -g CA="2>&1 | cat -A"
alias -g NE="2> /dev/null"
alias -g NUL="> /dev/null 2>&1"
alias -g P="2>&1| pygmentize -l pytb"

alias dud='du -d 1 -h'
(( $+commands[duf] )) || alias duf='du -sh *'
(( $+commands[fd] )) || alias fd='find . -type d -name'
alias ff='find . -type f -name'


# zsh is able to auto-do some kungfoo
# depends on the SUFFIX :)
autoload -Uz is-at-least
if is-at-least 4.2.0; then
  # open browser on urls
  if [[ -n "$BROWSER" ]]; then
    _browser_fts=(htm html de org net com at cx nl se dk)
    for ft in $_browser_fts; do alias -s $ft='$BROWSER'; done
  fi

  _editor_fts=(cpp cxx cc c hh h inl asc txt TXT tex)
  for ft in $_editor_fts; do alias -s $ft='$EDITOR'; done

  if [[ -n "$XIVIEWER" ]]; then
    _image_fts=(jpg jpeg png gif mng tiff tif xpm)
    for ft in $_image_fts; do alias -s $ft='$XIVIEWER'; done
  fi

  _media_fts=(ape avi flv m4a mkv mov mp3 mpeg mpg ogg ogm rm wav webm)
  for ft in $_media_fts; do alias -s $ft=mplayer; done

  #read documents
  alias -s pdf=acroread
  alias -s ps=gv
  alias -s dvi=xdvi
  alias -s chm=xchm
  alias -s djvu=djview

  #list whats inside packed file
  alias -s zip="unzip -l"
  alias -s rar="unrar l"
  alias -s tar="tar tf"
  alias -s tar.gz="echo "
  alias -s ace="unace l"
fi

# Make zsh know about hosts already accessed by SSH
zstyle -e ':completion:*:(ssh|scp|sftp|rsh|rsync):hosts' hosts 'reply=(${=${${(f)"$(cat {/etc/ssh_,~/.ssh/known_}hosts(|2)(N) /dev/null)"}%%[# ]*}//,/ })'
