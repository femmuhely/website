#!/bin/bash

hugo

echo "Enter commit message: "

read input_variable

git add --all .

git commit -a -m "$input_variable"

git push origin master

git subtree push --prefix=public https://github.com/femmuhely/website.git gh-pages
