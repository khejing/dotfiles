# You can put files here to add functionality separated per file, which
# will be ignored by git.
# Files on the custom/ directory will be automatically loaded by the init
# script, in alphabetical order.

# For example: add yourself some shortcuts to projects you often work on.
#
# brainstormr=~/Projects/development/planetargon/brainstormr
# cd $brainstormr
#
myproxy() {
  export ALL_PROXY='socks5://172.25.240.1:10808'
  git config --global core.sshCommand 'ssh -o "ProxyCommand=nc -x 172.25.240.1:10808 %h %p"'
}
alias gh='git log --pretty=format:"%C(auto)%h %ad | %C(auto)%s%d" --date=format:"%y-%m-%d %R"'
alias ggr='git grep -i'
alias grhl='git reset HEAD^'
alias unproxy='unset ALL_PROXY;git config --global --unset core.sshCommand'
