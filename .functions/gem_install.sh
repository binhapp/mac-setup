gem_install() {
  echo N | rbenv install $(cat ~/.ruby-version)
  rbenv local $(cat ~/.ruby-version)
  gem install cocoapods
  gem install fastlane
}