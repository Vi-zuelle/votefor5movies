class NomimoviesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]
  before_action :set_nomimovie, only: [:show, :destroy]

  def index
    @nomimovies = policy_scope(Nomimovie)
    authorize @nomimovies
  end

  def new # GET
    @nomimovie = current_user.nomimovies.new
    authorize @nomimovie
  end

  def create # POST
    @nomimovie = current_user.nomimovies.new(nomimovie_params)
    # @nomimovie.user = current_user
    authorize @nomimovie

    if @nomimovie.save
      redirect_to nomimovies_path, notice: 'movie was successfully adde to nominees'
    else
      render :new
    end
  end

  def show # GET
  end

  def destroy # DELETE
    @nomimovie.destroy
    redirect_to nomimovies_path
  end

  private

  def nomimovie_params
    params.require(:nomimovie).permit(:title, :year, :user_id)
  end

  def set_nomimovie
    @nomimovie = Nomimovie.find(params[:id])
    authorize @nomimovie
  end

end




# nomimovies GET    /nomimovies(.:format)     nomimovies#index
# POST   /nomimovies(.:format)                nomimovies#create
# new_nomimovie GET    /nomimovies/new(.:format) nomimovies#new
# nomimovie GET    /nomimovies/:id(.:format)  nomimovies#show
# DELETE /nomimovies/:id(.:format)            nomimovies#destroy
