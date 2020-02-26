plugins=(git osx ruby zsh-autosuggestions)
# for git info check https://github.com/robbyrussell/oh-my-zsh/wiki/Cheatsheet#git
export ZSH=$HOME/.oh-my-zsh
export PATH="$PATH:$HOME/code"
export PATH="$HOME/go/bin:$PATH"
export PATH=${JAVA_HOME}/bin:$PATH
export PATH=~/.npm-global/bin:$PATH
export PATH="$PATH:$HOME/code/refs/automation/git"

alias gopen='git-open' # requires `npm install --global git-open` from https://github.com/paulirish/git-open
alias gs='gss'
alias code='cd ~/code'
source $ZSH/oh-my-zsh.sh
export GOPATH=$HOME/go
export PATH=$PATH:$(go env GOPATH)/bin

alias lln='lsof -iTCP -sTCP:LISTEN -n -P'

autoload -U promptinit; promptinit
prompt pure

# tmux pane name
pname() {
	tmux set -g pane-border-format "#{pane_index} $1"
}

chtmp() {
	cd $(mktemp -d)
}