# class MoviePolicy < ApplicationPolicy
#   class Scope < Scope
#     def resolve
#       scope.all
#       # scope.where(user: @user)
#     end
#   end

#   def index?
#     # scope.where(user: @user)
#     # @user == user
#     scope
#   end

#   def create? # POST
#     # record.user == user
#   end

#   def show? # GET
#   end

#   def destroy? # DELETE
#     # record.user == user # Only nomimovie creator can destroy it
#   end


# end
