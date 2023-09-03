if [[ "$OSTYPE" == "linux-gnu" ]]; then
    alias python=python3;
    alias open=xdg-open;
    # go to my compiler folder
    alias work='cd ~/Code/modern_compiler_implementation/tiger/ && tmux'
elif [[ "$OSTYPE" == "msys" ]]; then
    alias open=explorer;
else
    echo "Unexpected";
fi;

alias cls=clear # I'm used to cls in windows cmd
alias pip=pip3
alias md=mkdir
alias mv='mv -i'
alias dc=cd
alias gdb='gdb -q' # avoid tedious sentences
alias find=/usr/bin/find # in msys on my windows pc, find is resolute to that find of windows
