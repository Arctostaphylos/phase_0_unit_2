## Release 2: Basic Git Commands
Define the following commands and describe how they work/what they do.  


#### add
add stages changes to files. It essentially brings the files to git's attention and tells
git to pay attention to the file.

#### branch
creates a new branch - essentially a timeline of commits and changes

#### checkout
allows you to look at a different branch, and navigate there. If you've got multiple
branches that you're working on, you can use this command to switch between them.

#### clone
will clone a remote repo into a newly created directory. It automatically creates a remote
called "origin" and sets up a local branch

#### commit
commit is the command to tell git to take a snapshot of the file or files you're working on.
commit usually includes a message or description of the commit.

#### fetch
fetch also pulls files from a remote branch, but creates a local copy of the remote
branch without merging.

#### log
log lists the commits in reverse chronological order. 

#### merge
merges the changes you made to your local branch with another branch like the master branch

#### pull
pull changes from the remote branch to your local repo on your machine, automatically merges
any changes with the local branch.

#### push
pushes changes to remote branch, like GitHub

#### reset
reset basically undoes the most recent commit and resets the head and the index to the 
previous version of the file.

#### rm
removes files from the git index so that they are no longer tracked

#### status
shows the current state of the files and directories in your repo. 

## Release 4: Git Workflow

- Push files to a remote repository
First connect your local system to the remote repository by cloning the repo you want to work on. That will create a default remote called "origin"
You need to run git init to create a local git repository.
Then you can make changes and use the push command to push the changes to the remote repository.

- Fetch changes
Once you've cloned a branch from your GitHub repo, you need to also connect up to the repo you forked 
from in order to fetch any changes to that original branch. Use git remote add upstream address, which will assign the original repo (at the address specified) to the name "upstream". Now you can run git fetch upstream and git will pull in changes not present in your local repo.

- Commit locally
First add the file you want to commit in order to stage it. Then use git commit -m to locally commit the file. 

## Release 5: Reflection
I think this was the hardest challenge for me as I find working with git confusing. I have a clearer idea now about the basic workflow with git, but I'm not very confident about using git. I think the breakthrough for me was understanding that if I fetch a repo it automatically creates a default remote, because I wasn't able to connect my local repos to the remote if I'd already fetched them using the GitHub application.