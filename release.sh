git checkout -b $RELEASE_BRANCH main

cd com.huchell.test-ci-package
npm version $VERSION
cd ..

git add package.json
git commit -m "Bump version"
git push --set-upstream origin $RELEASE_BRANCH
