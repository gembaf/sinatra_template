#!/bin/bash

echo -n "your user name : "
read user_name

echo -n "your repository name : "
read repo_name

# README.md
cat README.md \
  | sed -e "s/gembaf/$user_name/g" \
  | sed -e "s/sinatra_template/$repo_name/g" \
  > README.md.new
mv README.md.new README.md
echo "Update README.md"

# bower.json
cat bower.json \
  | sed -e "s/gembaf/$user_name/g" \
  | sed -e "s/sinatra_template/$repo_name/g" \
  > bower.json.new
mv bower.json.new bower.json
echo "Update bower.json"

# views/layout.slim
cat views/layout.slim \
  | sed -e "s/gembaf/$user_name/g" \
  | sed -e "s/SinatraApp/$repo_name/g" \
  > views/layout.slim.new
mv views/layout.slim.new views/layout.slim
echo "Update views/layout.slim"

# git
rm -rf .git
cat << EOS

==================================================
please execute following commands

* git init
* git remote add origin git@github.com/your_name/your_repo.git
* git add .
* git commit -m 'first commit'
* git push -u origin master
==================================================
EOS

# remove myself
rm $0

