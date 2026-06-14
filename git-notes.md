# Why Git Exists

Git is a version control system that helps developers:
Track changes to files over time
Collaborate with others without overwriting work
Restore previous versions when something breaks
Experiment safely using branches
Maintain a complete history of a project
Created by Linus Torvalds in 2005, Git is now the most widely used version control system.

# Three States

A file in Git can be in one of three main states:

1. Untracked

Git knows the file exists, but it is not being tracked yet.

touch notes.txt
git status

2. Staged

The file has been marked for inclusion in the next commit.

git add notes.txt

3. Committed

The staged changes are permanently recorded in Git's history.

git commit -m "Add notes file"

# Three Areas

Git organizes work into three areas:

Working Directory
       ↓
   git add
       ↓
Staging Area (Index)
       ↓
 git commit
       ↓
Repository (.git)

1. Working Directory
The files you are actively editing.
Example:

echo "Hello" > app.txt

Changes exist only on your computer and are not yet staged.

2. Staging Area
A temporary holding area for changes that will go into the next commit.

git add app.txt

Allows you to choose exactly what gets committed.

3. Repository
The database where Git stores commits and project history.

git commit -m "Initial version"

The repository lives inside the hidden .git folder

# Branching

A branch is an independent line of development.

Why use branches?

Develop features separately
Fix bugs without affecting main code
Experiment safely
Collaborate on multiple tasks simultaneously

1. Create a branch

git branch feature-login

2. Switch to a branch

git switch feature-login (branch name according to you)

or

2. Or create and switch in one step:

git switch -c feature-login

3. Merge a branch

Switch to the target branch:

git switch main 

merge:

git merge feature-login

4. View branches

git branch

Example:

* main
  feature-login

The * indicates the current branch.

# key commands

- Command
- Purpose
1. git init
Create a new Git repository in the current folder.

2. git add .
Stage all new and modified files for the next commit.
3. git commit -m "message"
Save the staged changes as a commit with a message.

4. git push
Upload local commits to a remote repository (e.g., GitHub).

5. git status
Show the current state of the repository, including modified, staged, and untracked files.

6. git log
Display the commit history.

7. git branch
List branches (or create a new branch if a name is provided).

8. git switch <branch>
Switch to another branch.

9. git merge <branch>
Combine changes from the specified branch into the current branch.

10. git clone <url>
Download a copy of an existing remote repository.

Creates a complete copy — all files, all history, all branches.
Use case: phone breaks, buy new phone, run git clone — everything comes back.

