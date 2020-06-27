#!/bin/sh

set -e

[ -z "${GITHUB_PAT}" ] && exit 0
[ "${TRAVIS_BRANCH}" != "master" ] && exit 0

git config --global user.email "unorbu@rsta.gov.bt"
git config --global user.name "Ugyen Norbu"

git clone -b gh-pages https://github.com/UgyenNorbu/my_book_demo.git
cp -r ../_book/* ./
git add --all *
git commit -m"Update the book" || true
git push -q origin gh-pages
