## Think About Time

Flow was one of the subjects that stuck out to me while researching. Learning to put yourself in such a productive mindset is an incredible feat. While looking at the conditions I could see that this could be a common mindset for a programmer. Programs always have a specific task to achieve and the person writing the coder will always have immediate feedback after compiling. Timeboxing is using a length of time to split up when you accomplish tasks. My ideal time box would probably be between 2.5 and three hours. I’ve found that it’s easy for me to finish assignments one after the other, rather than spreading them out over the entire day. During Phase 0 I’ll be using this strategy to plan. Currently I do most of my tasks in the mornings before I go to work. When I was at school, I had all of my classes in the morning, and I’ve always found myself to be a morning person. Maybe it’s just the coffee. I’d say my system work pretty well for me, however I need to learn to be a little more flexible. When I inevitably do have things to do in the evening, my tasks seem far more daunting and difficult. Hopefully I will learn to find my state of flow, and I will definitely be working with a timer next to me. I have a bad habit of working for too long. Overall I’m planning to do most of the work I need to submit in the mornings before I have work. I haven't done a GPS yet, so I’m not exactly sure when is the best for me to do that. This first week I scheduled it at a time where I would have ample time to review before


## The Command Line

A shell is a command line interpreter. It makes some tasks easier, but requires knowledge of the language. “Bash” the shell of Unix and acts as a command language. In the first video a whole lot was thrown at you very quickly. I found it difficult to keep up and fully understand the topics. I don’t think it was the best choice for the first section of week 1, but what do I know?! I was able to use all of the commands, however I found myself getting lost in directories and forgetting where files were without being able to see them. I’m sure this won’t be an issue as I get used to this type of thinking. For me pwd was useful to help me get my bearings in the directory. It’s like always having a map home. If I had to use these commands everyday, the most useful would probably be pushd and popd, since they allow you to switch between directories, but thankfully I don’t!

pwd- print working directory, print working directory, print working directory, print working directory.

ls- list current directory

mv- moves a file or directories

../- "Move up" in directory or path

touch- creates an empty file

mkdir- creates directroy

less- pages through a file

rmdir- removes directory

rm- removes file

help- gives you help and explains commands



## Forking and Cloning

* When creating a new repository you first need to create it on github. After creating it, you’ll have the URL which gives you the ability to clone it onto your computer. When cloning a repository you need navigate to the folder (in terminal) you want to put file in, and use git clone <URL>. This will place the clone in the appropriate folder. When forking a repository you must find it on Github and use the fork button. This will give you a remote clone of the files that you may edit without editing the original. There is no difference in the way you clone a original repo and a forked repo.
* Forking a repository allows members to go in different directions with the project if they wish or can help people work together on an open source project. It increases communication within small groups as well as worldwide. For example, I might want to fork a code that uses measurements that I’m not used to. It would allow me to edit the code to make it more useful for me, but wouldn’t change the original repo.
* This process was pretty straight forward for me. I didn’t have too many difficulties. I was glad to learn about the timeline of version control because I was always curious how the fully edited version of the files from multiple users came to be.

## Tracking Changes

How does tracking and adding changes make developers' lives easier?
Having the full history of a file means that the developer and access it at any point since it's creation. Backing up, or starting from different points is much easier.
What is a commit?
A commit is a saving point. This is when the developer saves the changes they have made in the file.
What are the best practices for commit messages?
There are different rules from grammar, but as long as it simply explains the changes you made it should be okay. 
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