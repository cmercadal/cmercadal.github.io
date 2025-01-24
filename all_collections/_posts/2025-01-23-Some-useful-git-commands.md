---
layout: post
title: Some useful git commands I use
date: 2025-01-21 10:18:00
categories: [git, devops]
---

As it happens often that I make a mess, let me start with revert :)

# How to solve your mess

### 1. Check your commit history

```bash
git log —oneline —graph
```

You can personallice this output many forms. Here is one useful you can store on your config:
```bash
git config --global alias.lg 'log --color --graph --pretty="%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset" --abbrev-commit'
```

### 2. Move Back in History

To move back two commits:
```bash
git reset --soft HEAD~2
```

To move back two commits and remove all changes:
```bash
git reset --hard HEAD~2
```

Alternatively, a cleaner approach would be to preserve the history without leaving a mess, especially if someone else is working on the same branch. This will create a new commit on top of the two deleted commits and restore your repo to that point:
```bash
git revert --no-edit HEAD
```

To view the changes between two branches:
```bash
git log --graph --oneline branch1..branch2
```

---

# Git Fetch, Pull, and Merge

### 1. `git fetch`
**What it does**:  
Downloads updates from the remote repository but does **not** integrate them into your local branch. It updates your remote tracking branches (e.g., `origin/main`).

**Use case**:  
Use it to see what changes are available in the remote repository before deciding to integrate them.

**Example**:
```bash
git fetch origin
```

After fetching, you can inspect the updates with:
```bash
git log origin/main
```

---

### 2. `git pull`
**What it does**:  
Combines `git fetch` and `git merge` into a single step. It downloads updates from the remote repository and merges them into your current branch.

**Use case**:  
Use it when you want to bring your branch up to date with the remote branch.

**Example**:
```bash
git pull origin main
```
This fetches the latest changes from `origin/main` and merges them into your current branch.

---

### 3. `git merge`
**What it does**:  
Combines changes from one branch into another. It doesn't communicate with the remote repository. You can merge a local branch or a fetched remote branch into your current branch.

**Use case**:  
Use it when you want to integrate changes from another branch (local or remote) into your current branch.

**Example**:
```bash
git merge feature_branch
```
This merges `feature_branch` into your current branch.

---


# How It Worked for Me: Final Organization

When I finish my DevOps work and I want to leave everything in place, I followed these steps:

```bash
git checkout release
git merge feature
```
> **Note:** I don't merge to main branch, this is only done by a pull request.

After running the merge command, you might see:
```plaintext
Merge made by 'ort' strategy.
```
This means Git has successfully merged the branches without encountering any conflicts. The **ort** (optimized recursive) strategy automatically resolved the changes, as there were no conflicting edits in the files being merged.

To check the merge status, use:
```bash
git log --oneline --graph
```

To review changes, you can also use `git diff`.

Finally, to push changes:
```bash
git add .
git commit
git push origin main
```

To delete the local branch after merging:
```bash
git branch -d feature/test
```

To delete the remote branch:
```bash
git push origin --delete feature/test
```

This workflow helps ensure that the repository remains clean and organized while effectively managing feature branches.


---

# How to find commits

Find commits by person
```bash
git log --author="John Doe" #will show all commits done by specific author.
git log --author="John Doe\|Joe Smith" #with this regex we asked for all commits authored by these two people.
```

Looking for a Jira ticker 
```bash
git log --grep="JIRA-1234"
```

To look at logs for specific file.
```bash
git log -- testfile01
git log -- testfile-02 branchfile-01
```

To look for merges
```bash
git log —merge
```

To return only last commits
```bash
git log -1
```