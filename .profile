test -z "$PROFILEREAD" && . /etc/profile || true

# If running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# PATH setup
export ANDROID_HOME=$HOME/Android/Sdk
export ANDROID_HOME=$HOME/Android/Sdk
export GOPATH=$HOME/Development/Go
#export GO111MODULE=on
export PATH="$PATH:$HOME/bin:$HOME/.local/bin:/usr/local/bin:$HOME/.config/composer/vendor/bin:$HOME/.npm-global/bin:$PATH:/usr/local/go/bin:$GOPATH/bin:$HOME/Development/gcc-arm/bin:$ANDROID_HOME/emulator:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools:$ANDROID_HOME/tools/bin:$HOME/.rvm/bin"

# Config home
export XDG_CONFIG_HOME=$HOME/.config

# QT5CT
export QT_QPA_PLATFORMTHEME="qt5ct"

# Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
