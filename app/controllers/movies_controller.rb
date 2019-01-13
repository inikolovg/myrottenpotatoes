class MoviesController < ApplicationController
 def index
 @movies = Movie.all
 end
 def show
  id = params[:id] # retrieve movie ID from URI route
  @movie = Movie.find(id) # look up movie by unique ID
  # will render app/views/movies/show.html.haml by default
 end
 # add to the movies_controller.rb
 def new
  @movie = Movie.new
  # default: render 'new' template
 end
end

