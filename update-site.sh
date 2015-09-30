#!/bin/sh

now="$(date): update site: jekyll backup update"

git add -A

git commit -m "$now"
git push origin master

jekyll build --destination ../dgywork.github.io

cd ../dgywork.github.io/

site_now="$(date): update site: site update"

git add -A

git commit -m "$site_now"

git push origin master
