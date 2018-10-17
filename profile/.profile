# for git info check https://github.com/robbyrussell/oh-my-zsh/wiki/Cheatsheet#git

export ZSH=$HOME/.oh-my-zsh
export ZSH_THEME="robbyrussell"
export APP_API="http://localhost:9000"
export APP_HOST="http://localhost:8080"
export E2E_TEST_BROWSER="firefox"
export PATH="$PATH:$HOME/code"
export GOPATH=$HOME/go
export PATH="$HOME/.rbenv/bin:$PATH"
export PATH="$HOME/go/bin:$PATH"
export JAVA_HOME=`/usr/libexec/java_home -v 1.8`
export PATH=${JAVA_HOME}/bin:$PATH
export PATH=~/.npm-global/bin:$PATH
export ERL_AFLAGS="-kernel shell_history enabled"

alias talon="cd ~/go/src/github.com/talon-one/talon-service"
alias code='cd ~/code'
alias gopen='git-open' # requires `npm install --global git-open` from https://github.com/paulirish/git-open

alias kubeprod='kubectl --context=gke_talon-one-production_europe-west1-d_talon-production-belgium'
alias kubefarm='kubectl --context=gke_talon-farm2_europe-west1-d_farm2-cluster'
alias gs='gss'

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/alextalon/google-cloud-sdk/path.zsh.inc' ]; then source '/Users/alextalon/google-cloud-sdk/path.zsh.inc'; fi

if command -v brew >/dev/null 2>&1; then
  [ -f $(brew --prefix)/etc/profile.d/z.sh ] && source $(brew --prefix)/etc/profile.d/z.sh # Load rupa's z if installed
fi

eval "$(rbenv init -)"
