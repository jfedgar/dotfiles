
[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

source ~/.bashrc

# set prompt style:
export PS1="\w: "

export PATH="/usr/local/sbin:$PATH"
export PATH
