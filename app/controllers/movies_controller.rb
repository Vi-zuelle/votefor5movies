class MoviesController < ApplicationController

  def index
    @movies = Movie.all
    render template: 'nomimovies/index'
  end

  def show
    @movie = Movie.find(params[:id])
  end

  def create
    @movie = Movie.new(movie_params)
    hash = OmdbMovie.new
    @movie.image = hash.get_image_by_title(@movie.title)
    if @movie.save
      redirect_to @movie
    else
      render 'new'
    end
  end

  def new
    @movie = Movie.new
  end

end
