class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @user_prototypes = @user.prototypes
  end
end
