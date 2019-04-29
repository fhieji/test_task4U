class UsersController < ApplicationController
  def index
    @users = User.all
  end
  # the action to display the screen to view the data
  def show
  end
  # teh action to display the screen for creating a data
  def new
    @user = User.new
  end
  #the action to display the screen for updating the data
  def edit
  end
  #the action for creating a data
  def create
    @user = User.new(user_params)
    @user.save
    redirect_to @user
  end
  #the action to update the data
  def update
  end
  #the action to delete the data
  def destroy
  end

  def user_params
    params.require(:user).permit(:id, :email)
  end
end
