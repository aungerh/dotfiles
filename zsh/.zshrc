plugins=(git osx ruby)
source $HOME/.profile
source $ZSH/oh-my-zsh.sh
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh

autoload -U promptinit; promptinit
prompt pure

eval "$(direnv hook zsh)"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/alex/y/google-cloud-sdk/path.zsh.inc' ]; then source '/Users/alex/y/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/alex/y/google-cloud-sdk/completion.zsh.inc' ]; then source '/Users/alex/y/google-cloud-sdk/completion.zsh.inc'; fi

[[ -s "/Users/alex/.gvm/scripts/gvm" ]] && source "/Users/alex/.gvm/scripts/gvm"

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
