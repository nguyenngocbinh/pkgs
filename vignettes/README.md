
<!-- README.md is generated from README.Rmd. Please edit that file -->

# Update your fork directly on Github

## How to Update a Fork in Github

<!-- badges: start -->

<!-- badges: end -->

1.  Access your forked repository on Github.

2.  Click “Pull Requests” on the right, then click the “New Pull
    Request” button.

3.  Github first compares the base fork with yours, and will find
    nothing if you made no changes, so, click “switching the base”,
    which will change your fork to the base, and the original to the
    head fork. Now you should see changes where your fork needs to play
    “catch up”.

4.  Click “Create Pull Request”, give it a name, click “Send Pull
    Request”.

5.  Click “Merge Pull Request” and “Confirm Merge”.

6.  Assuming you had no changes, you can then merge automatically.

## Update a Local Fork at the Terminal

With a locally cloned repository, you can do the same with git in your
CLI as follows. First change to your repository folder, then confirm:

> git remote -v

Specify a remote upstream repo to sync with your fork:

> git remote add upstream
> <https://github.com/OriginalOwner/OriginalProject.git>

Verify:

> git remote -v

Fetch branches and commits from the upstream repo. You’ll be storing the
commits to master in a local branch upstream/master:

> git fetch upstream

Checkout your fork’s local master, then merge changes from
upstream/master into it.

> git checkout master git merge upstream/master

Push changes to update your fork on Github.
