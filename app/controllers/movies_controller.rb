# This file is app/controllers/movies_controller.rb
class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end
  private

  def movie_params
    params.require(:movie).permit(:title, :rating, :description, :release_date)
  end
  
  def new
    @movie = Movie.new
    #default: render 'new' template
  end
end