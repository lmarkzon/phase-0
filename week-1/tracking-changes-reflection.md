## Tracking Changes Reflection

- How does tracking and adding changes make developers' lives easier?
- What is a commit?
- What are the best practices for commit messages?
- What does the HEAD^ argument mean?
- What are the 3 stages of a git change and how do you move a file from one stage to the other?
- Write a handy cheatsheet of the commands you need to commit your changes?
- What is a pull request and how do you create and merge one?
- Why are pull requests preferred when working with teams?

Tracking and adding making developers' lives easier in many ways, one of the most important is that if they make a wrong decision or mistake in the code, they can go back to a previous saved version of the code and go from there instead of starting all over again. Especially if you accidentally introduct bugs in your code. Another reason is that when multiple people are working on a project, it is helpful to see who made what changes to the code and when they made them. 

A commit is the save point in a git, it's your safety net that we discussed above. They are bundles of changes you have made to a project. When working on a project, once you are done making changes to a section/part you stage them for commit, and then actually commit them. It's a good idea to commit often to have multiple save points, just in case. 

The first line of a good commit message should be a short description and should skip the full stop. They have a 50 character soft limit and the body should provide a meaningful commit message. Good commit messages use present tense, such as "change" not "changed" or "changes". They also include the motivation for the change, and compares its implementation with previous behavior of the change. 

Head is the commit that the user is currently working on, and HEAD^ is the last commit, followed by Head~3, Head~4, etc. This is helpful if you commit a file and then decide that you actually need to make changes to it, you use git reset --soft HEAD^

Once you have made git changes to a file and have saved it, there are 3 stages to make the change "official". Check your git status before to check the status of your files by typing git status. This will tell you whether the changes have been staged for commit yet or ig you have an untracked files. First you add the changes to the stage (changes to be committed) by typing git add . The period at the end means include everything you saw in the git status. Then you commit the changes (create the save point) by typing git commit -m "your commit message goes here". To view all of your changes, type git log. Once this is complete, you can push the changes to GitHub by typing git push origin nameofthebranch. Those are the 3 stages of a git change and how to move files through them.

Cheat Sheet for a :
git branch -> check git branch
git status -> check any changes since last time
git pull -> make sure local up to date with github repo
git checkout -> use to navigate between branches
	git checkout -b nameofbranch -> creates and navigates to new branch
git add .  ->the period means include everything in this directory
.. -> go up one directory
color goes yellow to green, stage for commit
git commit -m "commit message" -> git message
git push origin nameofbranch -> sends to origin, in this case remote repository

A pull request lets you share with others the changes you've pushed to a repository on GitHub. Once a pull request is sent, whoever I sent it to can review the set of changes (commits) made to a project. So once I am done staging, commiting, and pushing the changes, I can create a pull request. 

To create and merge a pull request: 
1) go to github:
2) click "compare and pull request" link OR
or can do it manually:
	click pull request
	click new pull request
3) compare “Master” and compare”featurebranch”
4) create pull request, review, and again
5) then merge pull request if there are no conflicts
6) confirm merge
7) delete old branch, useless once merged

Pull requests are prefered when working with teams because it's much simpler than the "fork and pull" method. It is also preferred when merging code so multiple people can review a code for errors, great for receiving feedback on a project. It's easier this way for teams of people to stayed organized and not have to create a bunch of branches and remotes to keep track of when multiple people are working on a project.