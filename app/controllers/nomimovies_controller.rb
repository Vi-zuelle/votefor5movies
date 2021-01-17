class NomimoviesController < ApplicationController
  # skip_before_action :authenticate_user!, only: [:index]
  # before_action :set_nomimovie, only: [:show, :destroy]

  def index
    @nomimovies = current_user.nomimovies
    # @nomimovies = policy_scope(Nomimovie)
    # authorize @nomimovies
    @movies = Movie.all
    # hash = OmdbMovie.new
    # @movie.image_url = hash.get_image_by_title(@movie.title)
    # authorize @movies
  end

  def new # GET
    @movie = Movie.find(params[:movie_id])
    @nomimovie = Nomimovie.new
  end

  def create # POST
    @movie = Movie.find(params[:movie_id])
    @user = current_user
    @nomimovie = Nomimovie.new(nomimovie_params)
    @nomimovie.movie = @movie
    @nomimovie.user = @user

    if @nomimovie.save
      redirect_to nomimovies_path, notice: 'movie was successfully adde to nominees'
    else
      render :new
    end
  end

  def show # GET
  end

  def destroy # DELETE
    @nomimovie = Nomimovie.find(params[:id])
    @nomimovie.destroy
    redirect_to nomimovies_path
  end

  private

  def nomimovie_params
    params.require(:nomimovie).permit(:title, :year, :user_id, :image_url, :movie_id)
  end

  # def set_nomimovie
  #   @nomimovie = Nomimovie.find(params[:id])
  # end

end




# nomimovies GET    /nomimovies(.:format)     nomimovies#index
# POST   /nomimovies(.:format)                nomimovies#create
# new_nomimovie GET    /nomimovies/new(.:format) nomimovies#new
# nomimovie GET    /nomimovies/:id(.:format)  nomimovies#show
# DELETE /nomimovies/:id(.:format)            nomimovies#destroy
