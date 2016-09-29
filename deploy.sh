#! /bin/bash
git checkout develop
rm -rf public
hugo
git add .
git commit -m 'start deploy'
git push origin develop && git subtree push --prefix public origin gh-pages
