Making Movies
=============

Objective
---------

We have this a very mediocre rails app for viewing and editing a movies/actors
database. The front-end completely lacks pizazz. Your mission is to revamp the
front-end into something a bit more modern and make more use of javascript.

Suggestions
-----------

Feel free to change this app however you like. Keep in mind we want a
maintainable app though.

Some Things that you could try include:

* Better styling - Even a touch of Bootstrap would make a world of difference
* Search functionality - Searching for movies/actors is much better than just
  having them listed.
* Pagination - Currently we don't have enough data to need it, but when this
  application goes into production we're going to need it.
* Movie APIs - Hate the data we've provided? Well you can always hook
  up to another movie database via api. For example rottentomatoes.com has one.
* Jquery controls - You could manage the movie selections using a
  nice jquery autocomplete control like Select2 or Selectize. Or maybe a nice
  date picker.
* Implement "Add cast members" to movies edit page. You'll probably have to add
  a rails controller action in MoviesController to make this work. You can append
  actors by doing this:
    ```@movie.actor << actor```
* Include movie images
* If you have experience with writing single page javascript apps, making the
  movies page or the actors page a single page app could work well. If you take
  this path we recommend at the very last using some kind of template engine
  (eg moustache, handlebars, etc). HTML in javascript string form is never
  pleasant to maintain...

Getting setup
-------------

# Install ruby

https://www.ruby-lang.org/en/downloads/

# Install bundler

gem install bundle

# Install gems using bundler

cd making-movies
bundle install

# Generate the sqlite database

rake db:migrate
rake db:setup

# Start a rails server

rails s

# The app is available at:

http://localhost:3000

Code walkthrough
----------------

Javascript libraries can easily be added by adding them to
apps/assets/javascripts. Similarly sass or css stylesheets can be added
to apps/assets/stylesheets.

Also you can add coffeescript/javascript files to the app/assets/javascripts
folder for use by the application pages.

All html for movies pages is rendered in the following places:

app/views/movies - For pages with /movies in the url
app/views/actors - For page with /actors in the url
app/views/home/index.html.erb - Start page

A couple of json_builders are in place that will create some json content:

http://localhost:3000/movies.json
http://localhost:3000/movies/1.json (json for record #1 'show' action)
http://localhost:3000/actors.json
http://localhost:3000/actors/1.json (json for record #1 'show' action)

@movies/@movie and @actors/actor objects are assembled in controller actions.
For example ActorController in app/controllers/actors_controller.rb uses index
method to assemble data for the index url action, show for actors/1 and edit
for actors/1/edit. Check the routes for more details of which actions are used
for which action:

http://localhost:3000/dev/routes

For more detail, check the documentation on the Rails website:

http://guides.rubyonrails.org/
