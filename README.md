chef-osx-workstation
====================

for setting up my work machine.

Heavily based on [sprout-wrap](https://github.com/pivotal-sprout/sprout-wrap), this project uses [soloist](https://github.com/mkocher/soloist) and [librarian-chef](https://github.com/applicationsonline/librarian-chef), as well as a subset of the recipes in sprout's [cookbooks]((https://github.com/pivotal-sprout/sprout).



## Installation under Mavericks (OS X 10.9)

### 1. Install XCode

[![Xcode - Apple](http://r.mzstatic.com/images/web/linkmaker/badge_macappstore-lrg.gif)](https://itunes.apple.com/us/app/xcode/id497799835?mt=12&uo=4)

Don't forget to start up Xcode once it's installed so that you can agree to the terms&mdash;many commands won't work until the terms have been agreed to.

### 2. Install Command Line Tools

    xcode-select --install

### 3. Clone this project

    git clone git@github.com:JohnBernas/chef-osx-workstation.git
    cd chef-osx-workstation

### 4. Install soloist & and other required gems

If you're running under rvm or rbenv, you shouldn't preface the following commands with `sudo`.

    sudo gem install bundler
    sudo bundle

### 5. Run soloist

[You may want to modify your Energy Saver preferences (**System Preferences &rarr; Energy Saver &rarr; Computer Sleep &rarr; 3hrs**) because soloist usually takes 2-3 hours to complete.]

    bundle exec soloist


