# You can put files here to add functionality separated per file, which
# will be ignored by git.
# Files on the custom/ directory will be automatically loaded by the init
# script, in alphabetical order.

# For example: add yourself some shortcuts to projects you often work on.
#
# brainstormr=~/Projects/development/planetargon/brainstormr
# cd $brainstormr
#
windowsIP=`awk '/nameserver/ {print $2}' /etc/resolv.conf`
myproxy() {
  export ALL_PROXY="socks5://$windowsIP:10808"
  export GIT_SSH_COMMAND="ssh -o \"ProxyCommand=nc -x $windowsIP:10808 %h %p\""
}
alias unproxy='unset ALL_PROXY;unset GIT_SSH_COMMAND'
alias gh='git log --pretty=format:"%C(auto)%h %ad | %C(auto)%s%d" --date=format:"%y-%m-%d %R"'
alias ggr='git grep -i'
alias grhl='git reset HEAD^'
