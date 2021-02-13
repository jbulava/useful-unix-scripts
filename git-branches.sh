#!/bin/bash
git fetch -p && for branch in $(git branch -vv | grep ': gone]' | awk '{print $1}'); do git branch -D $branch; done

# There is currently an unexpected error in this code if run when you have a local branch checked out that was deleted remotely.
# The * to indicate the checkout out branch is mistaken for the branch name and "git branch -D *" is therefore run for filenames
# in the current directory. No harm unless a local file is the same name as a branch, but should be fixed.  Starting to work on
# an update below and will remove these comments when fully corrected to my liking.

#git fetch -p && for branch in $(git branch -vv | grep ': gone]' | awk '{print $1}'); do if [$branch == '*']; then echo 'Current branch has been deleted on remote, skipping local delete.'; break; fi; git branch -D $branch; done
