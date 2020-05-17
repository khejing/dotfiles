function git-status {git status}
Set-Alias gst git-status
function git-diff {git diff}
Set-Alias gd git-diff
function git-diff-cache {git diff --cached}
Set-Alias gdca git-diff-cache
function git-add-interactive {git add -p}
Set-Alias gapa git-add-interactive
function git-add {git add $args}
Set-Alias ga git-add
function git-commit {git commit -m $args}
Set-Alias gcmsg git-commit
function git-history {git log --pretty=format:"%C(auto)%h %ad | %C(auto)%s%d" --date=format:"%y-%m-%d %R"}
Set-Alias gh git-history
function git-log {git log --stat -p}
Set-Alias glgp git-log
function git-grep {git grep -i $args}
Set-Alias ggr git-grep
function git-push {git push}
Set-Alias gitp git-push
function git-push-force {git push --force}
Set-Alias gpf! git-push-force
function git-pull {git pull}
Set-Alias gitl git-pull
function git-pull-rebase {git pull --rebase}
Set-Alias gup git-pull-rebase
