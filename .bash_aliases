if [[ "$OSTYPE" == "linux-gnu" ]]; then alias python=python3; fi;
alias pip=pip3
alias md=mkdir
alias cls=clear
alias mv='mv -i'
alias dc=cd
if [[ "$OSTYPE" == "linux-gnu" ]]; then alias open=xdg-open;
elif [[ "$OSTYPE" == "msys" ]]; then alias open=explorer; fi;
alias gdb='gdb -q'
alias work='cd ~/Code/modern_compiler_implementation/tiger/ && tmux'
