git config user.singingkey = $GITHUB_TOKEN

git checkout -b $RELEASE_BRANCH main

cd com.huchell.test-ci-package
npm version $VERSION
git add package.json
cd ..

git commit -m "Bump version"
git push --set-upstream origin $RELEASE_BRANCH
