# gvf-webapp

Global Village Foundation web app, which can easily be deployed to Heroku.

#Running Locally

## Installing git

Mac users can download and install git from [here](https://git-scm.com/download/mac). This let's you download DMG file for mac. 

---

## Installing Ruby

To run this app locally, we need to have ruby. Though mac os ships with a version of ruby; we need some specific version. To manage different ruby versions it is recommended to install ruby using [rbenv](https://github.com/rbenv/rbenv) (some version manager for managing different versions of ruby). Here is how to install rbenv on Mac.

`Compatibility note: rbenv is incompatible with RVM`

Most easy option is to install using [Homebrew](http://brew.sh/) as below

```sh
$ brew install rbenv
```

OR just a little harder is to do this

```sh
$ git clone https://github.com/rbenv/rbenv.git ~/.rbenv
$ cd ~/.rbenv && src/configure && make -C src
$ echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bash_profile
$ ~/.rbenv/bin/rbenv init   ## Follow the instruction to initialize rbenv automatically and restart the shell
```

If rbenv is set up use below command to check the installation

```sh
$ type rbenv
## rbenv is a function
```

To use rbenv with ease let's also install [ruby-build](https://github.com/rbenv/ruby-build) plugin for rbenv. Here is how to install

using Homebrew

```sh
brew install ruby-build
```

OR 

pulling the source from git

```sh
git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
```
---

After installation of rbenv, we need to install a specific version of ruby. Let's say we want version 2.2.3

```sh
$ rbenv install 2.2.3
$ rbenv versions
```

Set ruby version as global as below,

```sh
$ rbenv global 2.2.3
```


Make sure you have Ruby installed.  Once you've installed some Ruby versions, you'll want to install gems. First, ensure that the target version for your project is the one you want by checking <code>rbenv version</code> (see [Command reference](https://github.com/rbenv/rbenv#command-reference)). Then, proceed to install gems as you normally would:

```sh
$ gem install bundler
```

Also, install the [Heroku Toolbelt](https://toolbelt.heroku.com/). (Optional)

---

## Running on local machine using dev profile

From the location where you want put the source code fire below commands.

```sh
$ git clone git@github.com:gvfindia/gvf.git
$ cd gvf
$ bundle install ## installs all the dependencies, this could take a while and mac users may need to install XCode/Xcode command line tool.
$ bundle exec rake db:create db:migrate ## creates db and runs patches, db:create required once; db:migrate required when the is schema change
$ rails server  ## Starts the server, use this anytime to start server from project checkout location.
```

Your app should now be running on [localhost:3000](http://localhost:3000/).

# Understanding the folder structure of Rails App
Please go through this basic tutorial "[Ruby On Rails - Directory Structure](http://www.tutorialspoint.com/ruby-on-rails/rails-directory-structure.htm)" for understanding the folder structure of rails app. This would help you to start making changes.

# Deploying to Heroku (Optional)

## Running heroku local

```sh
$ heroku local
```

## Deploying to Heroku

```sh
$ heroku create
$ git push heroku master
$ heroku run rake db:migrate
$ heroku open
```

or

[![Deploy to Heroku](https://www.herokucdn.com/deploy/button.png)](https://heroku.com/deploy)

## Docker

The app can be run and tested using the [Heroku Docker CLI plugin](https://devcenter.heroku.com/articles/introduction-local-development-with-docker).

Make sure the plugin is installed:

    heroku plugins:install heroku-docker

Configure Docker and Docker Compose:

    heroku docker:init

And run the app locally:

    docker-compose up web

The app will now be available on the Docker daemon IP on port 8080.

To work with the local database and do migrations, you can open a shell:

    docker-compose run shell
    bundle exec rake db:migrate

You can also use Docker to release to Heroku:

    heroku create
    heroku docker:release
    heroku open

## Documentation

For more information about using Ruby on Heroku, see these Dev Center articles:

- [Ruby on Heroku](https://devcenter.heroku.com/categories/ruby)

