PATH=~/bin:$PATH:/pub/toolchains/arm/gcc/bin:/pub/toolchains/arm/bin
export LANG=en_US.utf8

function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/(\1)/"
}

PLAIN="\[\033[00m\]"
YELLOW="\[\033[0;33m\]"
BWHITE="\[\033[01;37m\]"
BGREEN="\[\033[01;32m\]"

export PS1="$PLAIN\u@\h:$BGREEN\w$YELLOW\$(parse_git_branch)$PLAIN\$ $PLAIN"

# tell less to decode escape sequences
export LESS=-R
alias ls="ls --color=always"
