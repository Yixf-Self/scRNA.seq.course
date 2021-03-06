# configure your name and email if you have not done so
git config --global user.email "vladimir.yu.kiselev@gmail.com"
git config --global user.name "wikiselev"

# clone the repository to the book-output directory
git clone -b gh-pages \
  https://${GH_TOKEN}@github.com/${TRAVIS_REPO_SLUG}.git \
  book-output
cd book-output
mkdir blischak
cp ../blischak/umi.rds blischak/
cp ../blischak/reads.rds blischak/
cp -r ../_book/* ./
rm -rf _bookdown_files
git add *
git commit -m "Build the book"
git push origin HEAD:gh-pages
