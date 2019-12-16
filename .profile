test -z "$PROFILEREAD" && . /etc/profile || true

# If running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# Flatpak support
if [ "${XDG_DATA_DIRS#*flatpak}" = "${XDG_DATA_DIRS}" ]; then
    XDG_DATA_DIRS="${XDG_DATA_HOME:-"$HOME/.local/share"}/flatpak/exports/share:/var/lib/flatpak/exports/share:${XDG_DATA_DIRS:-/usr/local/share:/usr/share}"
fi

export XDG_DATA_DIRS

# PATH setup
export ANDROID_HOME=$HOME/Android/Sdk
export ANDROID_HOME=$HOME/Android/Sdk
export GOPATH=$HOME/Development/Go
#export GO111MODULE=on
export PATH="$PATH:$HOME/bin:$HOME/.local/bin:/usr/local/bin:$HOME/.config/composer/vendor/bin:$HOME/.npm-global/bin:$PATH:/usr/local/go/bin:$GOPATH/bin:$HOME/Development/gcc-arm/bin:$ANDROID_HOME/emulator:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools:$ANDROID_HOME/tools/bin:$HOME/.rvm/bin"

# Config home
export XDG_CONFIG_HOME=$HOME/.config

# Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
