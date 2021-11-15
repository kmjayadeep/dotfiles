export ZSH="/home/jayadeep/.oh-my-zsh"
fpath+=("$HOME/.zsh/pure")
ZSH_THEME=""

plugins=(
	git
	docker
	zsh-syntax-highlighting
  z
  taskwarrior
)


source $ZSH/oh-my-zsh.sh

# .zshrc
autoload -U promptinit; promptinit
prompt pure


export EDITOR='nvim'

PATH="$HOME/.node/bin:$PATH"
NODE_PATH="$HOME/.node/lib/node_modules:$NODE_PATH"
# export PATH="$PATH:/opt/lampp/bin:/opt/lampp"
#source virtualenvwrapper.sh
eval $(systemctl --user show-environment | grep SSH_AUTH_SOCK)
export SSH_AUTH_SOCK

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
export PATH="$HOME/scripts/bin:$PATH"
export PATH="$PATH:$HOME/workspace/scripts"
# Symlinks to scripts in other folders
export PATH="$PATH:$HOME/bin"
# Some work related scripts which contains confidential info
export PATH="$PATH:$HOME/workspace/private_scripts"
export PATH="$PATH:$HOME/go/bin"
export PATH="${PATH}:${HOME}/.krew/bin"
export PATH=~/.npm-global/bin:$PATH
export GOPATH=~/go

alias fixroot="XDG_RUNTIME_DIR=/run/user/$UID systemctl --user reset-failed"

# Variables
export PASSWORD_STORE_DIR=~/private/password-store


read -r last_backup_date  < ~/workspace/backups/last_backup_date
current_date=$(date -u +"%Y-%m-%d")
[[ "$last_backup_date" =~ $current_date.* ]] || echo "Last backup was done on $last_backup_date"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh


PATH="/home/jayadeep/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/home/jayadeep/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/home/jayadeep/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/home/jayadeep/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/home/jayadeep/perl5"; export PERL_MM_OPT;
export WORKON_HOME=~/.virtualenvs
export CLOUDSDK_PYTHON=python2
#source /usr/bin/virtualenvwrapper.sh


# aliases
source $HOME/.bash_aliases

# Private conf
source $HOME/.zshrc_private

if [ -f ~/.ssh/agent.env ] ; then
    . ~/.ssh/agent.env > /dev/null
    if ! kill -0 $SSH_AGENT_PID > /dev/null 2>&1; then
        echo "Stale agent file found. Spawning a new agent. "
        eval `ssh-agent | tee ~/.ssh/agent.env`
        ssh-add
    fi
else
    echo "Starting ssh-agent"
    eval `ssh-agent | tee ~/.ssh/agent.env`
    ssh-add
fi


# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


# source /usr/share/nvm/init-nvm.sh
