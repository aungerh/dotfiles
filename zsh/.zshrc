plugins=(git osx ruby)

# for git info check https://github.com/robbyrussell/oh-my-zsh/wiki/Cheatsheet#git

export ZSH=$HOME/.oh-my-zsh
export ZSH_THEME="robbyrussell"
export PATH="$PATH:$HOME/code"
export PATH="$HOME/.rbenv/bin:$PATH"
export PATH="$HOME/go/bin:$PATH"
export JAVA_HOME=`/usr/libexec/java_home -v 1.8`
export PATH=${JAVA_HOME}/bin:$PATH
export PATH=~/.npm-global/bin:$PATH
export ERL_AFLAGS="-kernel shell_history enabled"
export BUGSNAG_APIKEY="5e88765d681cfb97331c032c12ff5535"

alias gopen='git-open' # requires `npm install --global git-open` from https://github.com/paulirish/git-open
alias gs='gss'

eval "$(rbenv init -)"
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

source $ZSH/oh-my-zsh.sh
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh

export GOPATH=$HOME/go

autoload -U promptinit; promptinit
prompt pure

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

# run go from anywhere
export PATH=$PATH:$(go env GOPATH)/bin

