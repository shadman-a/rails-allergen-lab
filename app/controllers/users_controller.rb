class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy

    redirect_to recipes_path
  end


end
