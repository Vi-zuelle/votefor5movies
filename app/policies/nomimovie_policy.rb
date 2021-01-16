class NomimoviePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def index?
    true # Anyone can view all Nomimovies
  end

  def create? # POST
    record.user == user
  end

  def show? # GET
  end

  def destroy? # DELETE
    record.user == user # Only nomimovie creator can destroy it
  end
end
