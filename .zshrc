# Path to your oh-my-zsh installation.
export ZSH=/Users/$USER/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# Configs
# ------------------------------------------------------------------------------
alias config="code ~/.zshrc"

# Git
# ------------------------------------------------------------------------------
alias gs="git status"
alias gl="git log"
alias gd="git diff"
alias gco="git checkout"
alias gcob="git checkout -b"
alias gco-="git checkout -"
alias gfc="git fetch && git checkout"
alias gstash="git stash"
alias gsp="git stash pop"
alias gpull="git pull"
alias gpush="git push"
alias gpsuh="git push" # because I have fast fingers
alias gpushsuo="git push --set-upstream origin"
alias gpushh="git push && git push heroku"
alias gcom="git checkout master"
alias ga.="git add ."
alias gcm="git add . && git commit -m"
alias gcmae="git commit --allow-empty -m"
alias gcmaeic="git commit --allow-empty -m 'Initial commit'"
alias gpcmae="git pull && git commit --allow-empty -m"
alias gmm="git merge master --no-edit"
alias grm="git reset master"
alias gpushfwl="git push --force-with-lease"
alias grco="git reset && git checkout -- ."
alias grcocdf="git reset && git checkout -- . && git clean -df"
alias gcdf="git clean -df"
alias gclean="git clean -df"
alias glastbranch="git for-each-ref --count=6 --sort=-committerdate refs/heads/ --format='%(HEAD) %(color:yellow)%(refname:short)%(color:reset) - %(color:red)%(objectname:short)%(color:reset) - %(contents:subject) - %(authorname) (%(color:green)%(committerdate:relative)%(color:reset))'"
alias glast="glastbranch"
alias glb="glastbranch"
alias gstandup="git standup"
alias gsu="git standup"

# Applications
# ------------------------------------------------------------------------------
alias typora="open -a typora"
alias stree="open -a SourceTree"

# network monitors
# ------------------------------------------------------------------------------
alias nethogs="sudo /usr/local/sbin/nethogs"
alias iftop="sudo /usr/local/sbin/iftop"
alias tshark="sudo tshark"
alias vnstat="vnstat"

# tomcat
# ------------------------------------------------------------------------------
alias tomcat-start="sh /usr/local/Cellar/tomcat/9.0.6/libexec/bin/startup.sh"
alias tomcat-stop="sh /usr/local/Cellar/tomcat/9.0.6/libexec/bin/shutdown.sh"
alias tomcat-webapps="/usr/local/Cellar/tomcat/9.0.6/libexec/webapps"

# run ios / android emulator
# ------------------------------------------------------------------------------
alias ios="open /Applications/Xcode.app/Contents/Developer/Applications/Simulator.app"
alias android="~/Library/Android/sdk/emulator/emulator -avd Pixel_2_API_Q >/dev/null 2>&1 &"
alias androidversions="~/Library/Android/sdk/emulator/emulator -list-avds"

# run postgres
# ------------------------------------------------------------------------------
alias pg="open /Applications/Postgres.app"

# youtube-dl
# ------------------------------------------------------------------------------
alias ydl="youtube-dl -o '~/Desktop/%(title)s.%(ext)s' -x --audio-format mp3 --audio-quality 0 --embed-thumbnail --add-metadata"

# Exports
# ------------------------------------------------------------------------------

# go used for hyperledger fabric
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

# for homebrew formula installs
export PATH=/usr/local/bin:$PATH

# for python
export PATH="/usr/local/opt/python/libexec/bin:$PATH"
export PATH="/usr/local/opt/python@2/libexec/bin:$PATH"

# for flutter
export PATH=$PATH:$HOME/flutter/bin

# for npm permissions
export PATH=$PATH:$HOME/.npm-global/bin

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
export PATH="/usr/local/sbin:$PATH"

# nvm - node version manager https://github.com/nvm-sh/nvm
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
