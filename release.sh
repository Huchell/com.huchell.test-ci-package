git branch -b $RELEASE_BRANCH develop
npm version $VERSION
git add package.json
git commit -m "Bump version"
git push --set-upstream origin $RELEASE_BRANCH
