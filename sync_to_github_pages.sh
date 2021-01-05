# ruby --version
# rvm --version
# bundle --version
# gem --version
bundle install --jobs=3 --retry=3 --deployment
bundle exec jekyll build --future
bundle exec htmlproofer ./_site --only-4xx --check-favicon --check-html --url-ignore "/#.*/" --http-status-ignore "441"
cd _site && git add .
cd _site && git commit -m "Initial commit"
cd _site && git push origin main