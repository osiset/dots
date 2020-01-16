# Editor
export EDITOR=/usr/bin/nano

# Aliases
source $HOME/.alias

# Secrets
source ~/.secret

# Flatpak support
if [ "${XDG_DATA_DIRS#*flatpak}" = "${XDG_DATA_DIRS}" ]; then
    XDG_DATA_DIRS="${XDG_DATA_HOME:-"$HOME/.local/share"}/flatpak/exports/share:/var/lib/flatpak/exports/share:${XDG_DATA_DIRS:-/usr/local/share:/usr/share}"
fi

# Config home
export XDG_DATA_DIRS
export XDG_CONFIG_HOME="$HOME/.config"

# PATH setup
export ANDROID_HOME="$HOME/Android/Sdk"
export ANDROID_HOME="$HOME/Android/Sdk"
export GOPATH="$HOME/Development/Go"
# export GO111MODULE=on
export PATH="$PATH:$HOME/bin:$HOME/.local/bin:$HOME/.config/composer/vendor/bin:$HOME/.npm-global/bin:$PATH:/usr/local/go/bin:$GOPATH/bin:$HOME/Development/gcc-arm/bin:$ANDROID_HOME/emulator:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools:$ANDROID_HOME/tools/bin:$HOME/.rvm/bin"

# ZSH setup
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="theunraveler"
plugins=(git command-not-found colorize composer npm rvm last-working-dir)
source $ZSH/oh-my-zsh.sh

# SSH persistence
# Not currently needed (KWallet handling)
#
# if [ ! -S ~/.ssh/ssh_auth_sock ]; then
#        eval `ssh-agent`
#        ln -sf "$SSH_AUTH_SOCK" ~/.ssh/ssh_auth_sock
# fi
# export SSH_AUTH_SOCK=~/.ssh/ssh_auth_sock
# ssh-add -l > /dev/null || ssh-add

