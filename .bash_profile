export LS_OPTIONS='--color=auto'
export CLICOLOR='Yes' 
export LSCOLORS='CxfxcxdxbxegedabagGxGx'

export PATH="/usr/local/sbin:$PATH"

# added by Anaconda2 4.3.1 installer
export PATH="/usr/local/opt/qt5/bin:$PATH"

export PS1="\[\e[31;1m\]\u@\[\e[32;1m\]\h\$ \w \[\e[0m\]"
export CLICOLOR=TRUE

PATH=$PATH:$HOME/bin

#export TERM=xterm-color
export TERM=xterm-256color
export TMOUT=0

export PATH=$PATH:$HOME/bin

alias ll="ls -la"
alias astyle="astyle --style=attach --convert-tabs --indent=spaces=4 --add-brackets \
    --pad-header --unpad-paren --pad-oper --max-code-length=100 --formatted --align-pointer=type \
    --align-reference=type --break-blocks -Y"
alias vi=mvim
alias vim=mvim
alias dell="ssh richard@192.168.10.12 -p8222"
alias nvidia="ssh nvidia@192.168.10.10"

function _update_ps1() {
    PS1="$(~/powerline-shell.py $? 2> /dev/null)"
}

if [ "$TERM" != "linux" ]; then
    PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
fi
