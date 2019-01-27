
# Add RVM to PATH for scripting. Make sure this is the last PATH variable change
export PATH="$PATH:$HOME/.rvm/bin"

alias vim='mvim -v'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

#function pull() { git pull origin "2016-$1";}

### set git aliases and use bash completion in them: ###

# bash completion - first do 'brew install bash-completion'
[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

function_exists() {
    declare -f -F $1 > /dev/null
    return $?
}

# note: I have "ggrep" installed through brew 
# (gnu version of grep rather than the BSD version that comes with OSX)
git_aliases=`git config --list | ggrep -oP '(?<=alias\.)\w+'`
for al in $git_aliases; do
    alias g$al="git $al"

    complete_func=_git_$(__git_aliased_command $al)
    function_exists $complete_fnc && __git_complete g$al $complete_func
done

alias s="git status"
alias g="git"
### ###

# set up android sdk
export ANDROID_SDK=/Users/joeed/Library/Android/sdk
export ANDROID_HOME=/Users/joeed/Library/Android/sdk
export PATH=/Users/joeed/Library/Android/sdk/platform-tools:$PATH
export PATH=$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools
