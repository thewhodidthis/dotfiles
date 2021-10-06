# Tweak main prompt rephrasing '[\h:\W]\$ ' because
# the ksh(1) version that ships with macOS lacks
# backslash-escaped special character support
export PS1='[$(hostname -s):${PWD##*/}]\$ '

# Load options, aliases, functions
export ENV="$HOME/.kshrc"

# Override '.lesshst' default, lesskey(1) missing on macOS factory install
export LESSHISTFILE="$HOME/.less_history"

# Dedupe history
export HISTCONTROL=ignoredups

# Set default locale, use $LC_ALL for blanket overriding if need be
export LANG=en_US.UTF-8
