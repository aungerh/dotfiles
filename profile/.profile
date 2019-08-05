# for git info check https://github.com/robbyrussell/oh-my-zsh/wiki/Cheatsheet#git

export ZSH=$HOME/.oh-my-zsh
export ZSH_THEME="robbyrussell"
export APP_API="http://localhost:9000"
export APP_HOST="http://localhost:8080"
export E2E_TEST_BROWSER="firefox"
export PATH="$PATH:$HOME/code"
export PATH="$HOME/.rbenv/bin:$PATH"
export PATH="$HOME/go/bin:$PATH"
export JAVA_HOME=`/usr/libexec/java_home -v 1.8`
export PATH=${JAVA_HOME}/bin:$PATH
export PATH=~/.npm-global/bin:$PATH
export ERL_AFLAGS="-kernel shell_history enabled"

alias gopen='git-open' # requires `npm install --global git-open` from https://github.com/paulirish/git-open

alias kubeprod='kubectl --context=production-belgium'
alias kubefarm='kubectl --context=farm2'
alias gs='gss'
alias cleandb='/$GOPATH/src/github.com/talon-one/talon-service/scripts/cleanup_database.sh'

if command -v brew >/dev/null 2>&1; then
  [ -f $(brew --prefix)/etc/profile.d/z.sh ] && source $(brew --prefix)/etc/profile.d/z.sh # Load rupa's z if installed
fi

eval "$(rbenv init -)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

[[ -s "/Users/alextalon/.gvm/scripts/gvm" ]] && source "/Users/alextalon/.gvm/scripts/gvm"
