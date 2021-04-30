#!/usr/bin/env bash
git config user.email "sean.p.murray97@gmail.com"
git config user.name "Sean"

git checkout -b $RELEASE_BRANCH main

cd com.huchell.test-ci-package
npm version $VERSION
git add package.json
cd ..

git commit -m "Bump version"
git push --set-upstream origin $RELEASE_BRANCH
