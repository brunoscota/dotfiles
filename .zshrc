
unsetopt nomatch

export HOMEBREW_AUTO_UPDATE_SECS=604800
if [ -f ~/.aliases ]
then
  source ~/.aliases
fi

export ZSH="/Users/brunoscota/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

plugins=(
  git
  kubectl
  zsh-autosuggestions
  )

source $ZSH/oh-my-zsh.sh
# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
# Don't require escaping globbing characters in zsh.

export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && \. "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# export PYENV_ROOT="$HOME/.pyenv"
# command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# add Pulumi to the PATH
# export PATH=$PATH:$HOME/.pulumi/bin

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/brunoscota/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/brunoscota/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/brunoscota/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/brunoscota/Downloads/google-cloud-sdk/completion.zsh.inc'; fi

export PATH="${PATH}:${HOME}/.krew/bin"
export PATH="/usr/local/opt/mysql-client/bin:$PATH"
