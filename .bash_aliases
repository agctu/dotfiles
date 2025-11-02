if [[ "$OSTYPE" == "linux-gnu" ]]; then
    alias python=python3;
    alias open=xdg-open;
    # go to my compiler folder
    alias work='cd ~/Code/modern_compiler_implementation/tiger/ && tmux'
elif [[ "$OSTYPE" == "msys" ]] || [[ "$OSTYPE" == "cygwin" ]]; then
    open(){
        a=${1//\//\\}
        explorer $a
    }
else
    echo "OSTYPE is Unexpected $OSTYPE";
fi;

alias cls=clear # I'm used to cls in windows cmd
alias pip=pip3
alias md=mkdir
alias mv='mv -i'
alias cp='cp -i'
alias dc=cd
alias gdb='gdb -q' # avoid tedious sentences
alias find=/usr/bin/find # in msys on my windows pc, find is resolute to that find of windows

function maceoff() {
    export MSYS2_ARG_CONV_EXCL='*'
}

function maceon() {
    unset MSYS2_ARG_CONV_EXCL
}


function editrc() {
    vim ~/.bash_aliases
}

function reloadrc() {
    . ~/.bash_aliases
}
