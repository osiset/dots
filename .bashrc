export EDITOR=/usr/bin/nano
export GTK_USE_PORTAL=1

test -s ~/.alias && . ~/.alias || true
. ~/.secret

# SSH persistence
# Not currently needed (KWallet handling)
#
# if [ ! -S ~/.ssh/ssh_auth_sock ]; then
#        eval `ssh-agent`
#        ln -sf "$SSH_AUTH_SOCK" ~/.ssh/ssh_auth_sock
# fi
# export SSH_AUTH_SOCK=~/.ssh/ssh_auth_sock
# ssh-add -l > /dev/null || ssh-add

# Not needed now as ZSH is running
#
# export ANDROID_HOME=$HOME/Android/Sdk
# export PATH="$PATH:$ANDROID_HOME/emulator:$ANDROID_HOME/tools:$ANDROID_HOME/plaform-tools:$ANDROID_HOME/tools-bin:$HOME/.rvm/bin"
