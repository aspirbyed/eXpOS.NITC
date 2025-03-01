# eXpOS.NITC
Backup codes for OS Lab NITC

## Git Push Method (Invasive Method)
To completely replace all files and folders in your GitHub repository with the updated ones from your local machine, follow these steps:

Initialize Git (If Not Already)
If the folder is not a Git repository, initialize Git:
```
git init
```
Add the GitHub Remote (If Not Already)
If you haven't already connected the repo to GitHub, add it:
```
git remote add origin <your-repo-url>
```

Check if the remote exists using:
```
git remote -v
```

If it already exists but points to an old repo, update it:
```
git remote set-url origin <your-repo-url>
```
Force Push to Replace Everything on GitHub, completely overwrite the GitHub repository with your local files.

Stage all files
```
git add --all
```

Commit the changes
```
git commit -m "Git Commit"
```

Force push to GitHub (This WILL ERASE the existing repository files!)
```
git push --force origin main
```
(Use master instead of main if your repository uses master as the default branch.)

⚠️ Warning:
- This will completely overwrite all previous files and commits on GitHub.
- If the old repo has any collaborators, history, or issues you care about, consider backing up first.

## Git Push Safer
Git init and stage all files and then perform
```
git pull --rebase origin main
```
Then maually resolve the conflicts and perform
```
git add/rm <modified file>
```
Then to go to next conflict or finish commiting
```
git rebase --continue
```
When rebase is done do force(if necessary) push all the required changes will be pushed
```
git push origin
```
OR
```
git push origin main --force
```
