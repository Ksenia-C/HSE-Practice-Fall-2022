#!/bin/bash

ME='makogon2907'

ls 
pwd

echo ""

tree Content

cp -r main.pdf _gh_pages/article.pdf

function get_commit_message {
    echo "pdf updates" # TODO copy commit message from target commit
}

commit_message="$(get_commit_message)"

cd _gh_pages

git config user.name "$ME"
git config user.email "$ME@users.noreply.github.com"
git add article.pdf
git commit -m "$commit_message"

git push origin gh_pages

