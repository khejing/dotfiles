function git-status {git status}
Set-Alias gst git-status
function git-diff {git diff $args}
Set-Alias gd git-diff
function git-diff-cache {git diff --cached}
Set-Alias gdca git-diff-cache
function git-add-interactive {git add -p}
Set-Alias gapa git-add-interactive
function git-add {git add $args}
Set-Alias ga git-add
function git-add-all {git add -A}
Set-Alias gaa git-add-all
function git-reset-last {git reset HEAD^}
Set-Alias grhl git-reset-last
function git-commit {git commit -m $args}
Set-Alias gcmsg git-commit
function git-add-commit {git commit -am $args}
Set-Alias gcam git-add-commit
function git-history {git log --pretty=format:"%C(auto)%h %ad | %C(auto)%s%d" --date=format:"%y-%m-%d %R" $args}
Set-Alias gh git-history
function git-log {git log --stat -p $args}
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
function git-work-in-progress {git add -A; git rm $(git ls-files --deleted) 2>&1 | Out-Null; git commit --no-verify -m "--wip-- [skip ci]"}
Set-Alias gwip git-work-in-progress
function git-undo-work-in-progress {git log -n 1 | findstr "\-\-wip\-\-" 2>&1 | Out-Null; if ($?) { git reset HEAD~1 }}
Set-Alias gunwip git-undo-work-in-progress
function git-rebase-interactive {git rebase -i}
Set-Alias grbi git-rebase-interactive
function prompt
{
    Write-Host ("PS "+$pwd+" | "+$(get-date)+">") -nonewline
    return " "
}
