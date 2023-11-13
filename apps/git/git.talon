tag: user.git
-

git:                        "git "
git verison:                "git --version"
git init:                   "git init"
git status:                 "git status"
git log:                    "git log --graph --color=always --format='%C(auto)%h%d %s %C(green)(%cr) %C(bold blue)<%an>%Creset'"
git log original:           "git log"
git reflog:                 "git reflog"
git clean:                  "git clean "
git remove:                 "git rm "
git tag:                    "git tag "
git branch:                 "git branch "
git branch deli:            "git branch -d "
git clone:                  "git clone "
git cherry pick:            "git cherry-pick "
git rebase:                 "git rebase "
git revert:                 "git revert "

git merge:                  "git merge "
git merge {user.git_branch}:
    "git merge {git_branch}"

git remote:                 "git remote "
git remote verbose:         "git remote -v"

git reset:                  "git reset "
git reset all:              "git reset ."
git reset head:             "git reset --soft HEAD^"
git reset soft:             "git reset --soft "
git reset hard:             "git reset --hard "

git fetch:                  "git fetch "
git fetch all:              "git fetch -a"
git fetch upstream:         "git fetch upstream"
git fetch prune:            "git fetch --prune origin"

git checkout:               "git checkout "
git checkout {user.git_branch}:
    "git checkout {git_branch}"
git checkout <user.text>:   "git checkout {text}"
git checkout branch [<user.text>]:
    text = user.format_text(text or '', "SNAKE_CASE")
    "git checkout -b {text}"
git checkout last:          "git checkout -"

git add:                    "git add "
git add all:                "git add ."

git commit:
    'git commit -m ""'
    key(left)
git commit <user.text>$:
    text = user.format_text(text, "SENTENCE")
    'git commit -m "{text}"'
    key(left)
git commit amend:           "git commit --amend "

git diff:                   "git diff"
git diff halt:              "git diff "
git diff <user.text>:       "git diff {text}"

git pull:                   "git pull"
git pull upstream:          "git pull upstream"
git pull upstream master:   "git pull upstream master"
git pull upstream main:     "git pull upstream main"

git push:                   "git push"
git push tags:              "git push --tags"
git push deli:              "git push origin -d "

git stash:                  "git stash "
git stash show:             "git stash show"
git stash list:             "git stash list"
git stash pop:              "git stash pop"