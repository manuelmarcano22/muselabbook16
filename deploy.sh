bundle exec jekyll build
git checkout master
git add -A
git commit -m "Base Sources"
git push origin master
cd _site
touch .nojekyll
git add -A
git commit -am "Build"
git push origin gh-pages

