# My .bashrc

export PATH=~/bin:$PATH

#################################
# Add git branch name to prompt #
#################################

PLAIN="\[\033[00m\]"
YELLOW="\[\033[0;33m\]"
CYAN="\[\033[0;36m\]"

BYELLOW="\[\033[1;33m\]"
BWHITE="\[\033[1;37m\]"
BGREEN="\[\033[1;32m\]"
BRED="\[\033[1;31m\]"

BIPURPLE="\[\033[1;95m\]"

function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/(\1)/"
}

export PS1="$PLAIN\u$PLAIN@$BGREEN\w$YELLOW\$(parse_git_branch)$BWHITE\$ $PLAIN"
