# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh

# ---- Command line prompt ----
PS1="$PS1"'$([ -n "$TMUX" ] && tmux setenv TMUXPWD_$(tmux display -p "#D" | tr -d %) "$PWD")'

export ZSH_THEME="agnoster"
plugins=(git textmate osx ruby)
source $ZSH/oh-my-zsh.sh

# ---- osx utils ----
alias 'today=calendar -A 0 -f /usr/share/calendar/calendar.mark | sort'
alias 'dus=du -sckx * | sort -nr'
alias 'adventure=emacs -batch -l dunnet'
alias 'ttop=top -ocpu -R -F -s 2 -n30'
alias lh='ls -a | egrep "^\."'
alias 'rm=rm -i'

# ---- git ----
alias ga='git add'
alias gp='git push'
alias gl='git log'
alias gs='git status'
alias gd='git diff'
alias gm='git commit -m'
alias gma='git commit -am'
alias gb='git branch'
alias gc='git checkout'
alias gra='git remote add'
alias grr='git remote rm'
alias gpu='git pull'
alias gcl='git clone'
alias gta='git tag -a -m'
alias gf='git reflog'
alias gh='git hist'
alias 'sloc=/usr/local/sloccount/bin/sloccount'
# necessary to make rake work inside of zsh
alias rake="noglob rake"
# sort files in current directory by the number of words they contain
alias 'wordy=wc -w * | sort | tail -n10'
alias 'filecount=ls -aRF | wc -l'

# ---- postgres ---- 
function psqlstart() { /usr/local/pgsql/bin/pg_ctl -D /usr/local/pgsql/data -l logfile start ; }
function psqlstop() { /usr/local/pgsql/bin/pg_ctl stop ; }

# displays mounted drive information in a nicely formatted manner
function nicemount() { (echo "DEVICE PATH TYPE FLAGS" && mount | awk '$2="";1') | column -t ; }

# -------------------- [work environment] --------------------------
alias talon="cd ~/go/src/github.com/talon-one/talon-service"
export APP_API="http://localhost:9000"
export APP_HOST="http://localhost:8080"
export E2E_TEST_BROWSER="firefox"
# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/alextalon/google-cloud-sdk/path.zsh.inc' ]; then source '/Users/alextalon/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/alextalon/google-cloud-sdk/completion.zsh.inc' ]; then source '/Users/alextalon/google-cloud-sdk/completion.zsh.inc'; fi

# ---- myIP address ----
function myip() {
    ifconfig lo0 | grep 'inet ' | sed -e 's/:/ /' | awk '{print "lo0       : " $2}'
    ifconfig en0 | grep 'inet ' | sed -e 's/:/ /' | awk '{print "en0 (IPv4): " $2 " " $3 " " $4 " " $5 " " $6}'
    ifconfig en0 | grep 'inet6 ' | sed -e 's/ / /' | awk '{print "en0 (IPv6): " $2 " " $3 " " $4 " " $5 " " $6}'
    ifconfig en1 | grep 'inet ' | sed -e 's/:/ /' | awk '{print "en1 (IPv4): " $2 " " $3 " " $4 " " $5 " " $6}'
    ifconfig en1 | grep 'inet6 ' | sed -e 's/ / /' | awk '{print "en1 (IPv6): " $2 " " $3 " " $4 " " $5 " " $6}'
}

# ---- rbenv ----
eval "$(rbenv init -)"

export PATH="$PATH:$HOME/code"
export GOPATH=$HOME/go
export PATH="$HOME/.rbenv/bin:$PATH"

