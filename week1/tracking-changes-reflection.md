## Tracking Changes

How does tracking and adding changes make developers' lives easier?
Having the full history of a file means that the developer and access it at any point since it's creation. Backing up, or starting from different points is much easier.
What is a commit?
A commit is a saving point. This is when the developer saves the changes they have made in the file.
What are the best practices for commit messages?
You should capitalize that first letter. It shouldn't be more than 200 works long and and use the imperative verb form.
What does the HEAD^ argument mean?
This means the last commit. If you want to move backwards a single 'save point' you can use git reset --soft HEAD^
What are the 3 stages of a git change and how do you move a file from one stage to the other?
1. Change Files
..* Changing the file can be done in any text editor.
2. Add Files
..* Adding files can be done by using the command git add <filename.txt>
3. Commit Files
..* Commiting files can be done by using the command git commit -m "messege"

Write a handy cheatsheet of the commands you need to commit your changes.

Initialize or Clone: git init OR git clone <URL>
See Changes: git status OR git diff
Add Files: git add <filename.txt>
Commit Files: git commit -m "messege"

What is a pull request and how do you create and merge one?
A pull request means that you can communitcate the changes that you made to your team members.

First you click on compare and pull request. Then you can compare the master and your new feature branch. Here, you'll have the option to add comments, and you can solve any merge requests. Once it's merged you can delete the branch on git hub. Dont forget to fetch and merge the master, otherwise you wont have it locally!

Why are pull requests preferred when working with teams?
Pull requests ensures the team sees the changes that are made and facilitates communication between group members.