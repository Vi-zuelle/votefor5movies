class NomimoviesController < ApplicationController

  def index
    @nomimovies = current_user.nomimovies
  end

  def new # GET
    @nomimovie = Nomimovie.new
  end

  def create # POST
    @nomimovie = Nomimovie.new(nomimovie_params)
    @nomimovie.user = current_user
    if @nomimovie.save
      redirect_to nomimovies_path, notice: 'movie was successfully adde to nominees'
    else
      render 'new'
    end
  end

  def show # GET
  end

  def destroy # DELETE
  end

  private

  def nomimovie_params
    params.require(:nomimovie).permit(:title, :year)
  end

end




# nomimovies GET    /nomimovies(.:format)     nomimovies#index
# POST   /nomimovies(.:format)                nomimovies#create
# new_nomimovie GET    /nomimovies/new(.:format) nomimovies#new
# nomimovie GET    /nomimovies/:id(.:format)  nomimovies#show
# DELETE /nomimovies/:id(.:format)            nomimovies#destroy
