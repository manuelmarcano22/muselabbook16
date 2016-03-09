bundle exec jekyll build
git checkout master
git add -A
git commit -m "Base Sources"
git push origin master
cd _site
touch .nojekyll
#git init
#git remote add origin git@github.com:manuelmarcano22/muselabbook16.git
#git checkout -b gh-pages
git add -A
git commit -am "Build"
git push origin gh-pages

