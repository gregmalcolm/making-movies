Making Movies
=============

Objective
---------

A typical activity for a front end developer is taking a crappy rails backend
and turning it into something pretty. Which is exactly what you've been given
for this exercise. This is a simple rails movie database generated from
scaffolds. Hardly marketable. Go away and make something presentable.

Feel free to improvise. For example, if you want to hook into a 3rd party movie
database api, like Rotten Tomatoes, that's cool.

Getting setup
-------------

# Install ruby

https://www.ruby-lang.org/en/downloads/

# Install bundler

gem install bundle

# Install gems using bundler

cd making-movies
bundle install

# Generate the sqlite databse

rake db:setup
rake db:migrate

# Start a rails server

rails s

# The app is available at:

http://localhost:3000
