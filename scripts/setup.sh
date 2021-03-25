# Install ruby using rbenv
echo "Checkout ruby version ..."
ruby_version=`cat .ruby-version`
if [ ! -d "$HOME/.rbenv/versions/$ruby_version" ]; then
  echo "Install ruby $ruby_version ..."
  rbenv install $ruby_version;
fi

# Install bundler
echo "Install bundler ..."
gem install bundler

# Install all Gems
echo "Install all Gems ..."
bundle install

# Install all Pods
echo "Install all Pods ..."
bundle exec pod install

