# Create branch

git checkout --orphan gh-pages
git reset --hard
git commit --allow-empty -m "Initializing gh-pages branch"
git push -u origin gh-pages
git checkout develop

# Add worktree
rm -rf public
git worktree add -B gh-pages public origin/gh-pages
