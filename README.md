# eXpOS.NITC
Backup codes for OS Lab NITC

## For Git Push
If the folder is not a Git repository, initialize Git:
```
git init
```

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

Force push to GitHub (This WILL ERASE the existing repository files!)
```
git push --force origin main
```
⚠️ Warning:
 - This will completely overwrite all previous files and commits on GitHub.
 - If the old repo has any collaborators, history, or issues you care about, consider backing up first.
