## git diff c1ec450 HEAD

see changes

## git help diff

see help

## Merges

Fast forward
-- simplest case
-- like never branched existed
-- can be disaled

Automatic
-- non conflicting merge detected
-- preserves both timelines
-- merge commit on destination

Manual
-- automatic merge not possible
-- conflicting merge state
-- changes saved in merge comit

## Special markers / pointers

HEAD
-- points to last commit of current branch
-- can be moved (advanced)

## git branch

see existing branches

## git checkout -b updates

creates and names a new branch to "updates"

## git checkout main

change branch to main

## git merge test

merges the test branch INTO the current branch

## git push --set-upstream origin test

set upstream

## git branch -d updates

deletes the updates branch

## git push origin :testBranch

delete remote branch.
git will delete any branch that is after the :

## git fetch -p

deletes stale reference to a branch. -p is prune option
this will delete dead stale references to branches.

## git branch -a -v

shows all branches and versions

## cat README.md

shows the content of the file

## git tag mytag

adds a tag

## git tag --list

shows tags

## git tag -d mytag

deletes tag

## git tag -a v1.0 -m "Release 1.0"

adds annotated tag

## git show v1.0

shows info

## git
