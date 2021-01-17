class MoviesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]
  # before_action :set_movie, only: [:show, :destroy]
  require 'uri'

  def index
    @movies = Movie.all
    # hash = OmdbMovie.new
    # @movie.image_url = hash.get_image_by_title(@movie.title)
    render template: 'nomimovies/index'
  end

  def show
    @movie = Movie.find(params[:id])
  end

  def new
    @movie = Movie.new
  end

  def create
    # @user = current_user
    @movie = Movie.new(movie_params)
    # @movie.user = @user
    # hash = OmdbMovie.new
    # escaped_title = URI.escape(@movie.title)
    # @movie.image = hash.get_image_by_title(escaped_title)
    if @movie.save
      redirect_to nomimovies_path
    else
      render 'new'
    end
  end

  private

  def movie_params
    params.require(:movie).permit(:title, :year, :image_url, :user)
  end

  # def set_movie
  #   @movie = Movie.find(params[:id])
  #   # authorize @movie
  # end
end
