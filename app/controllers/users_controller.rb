class UsersController < ApplicationController

  def index
    @users = User.all
  end
  
  def show
    @user = User.find(params[:id])
  end
  
  def destroy
    @user = User.where(params[:id]).destroy
    if @user.destroy
      flash[:notice] = "User #{@user.email} destroyed"
    else
      flash[:alert] = "There was a problem destroying the user."
    end
    redirect_to "/user"
  end
  
end
