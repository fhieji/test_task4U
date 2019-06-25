class UsersController < ApplicationController
  def index
    @users = User.all
    @ticket = Ticket.new
    @tickets = Ticket.all
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
    @user = User.find(params[:id])
  end
  #the action for creating a data
  def create
    @user = User.new(user_params)
    @user.save
    redirect_to @user
  end
  #the action to update the data
  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      redirect_to users_path , notice: 'ユーザーの更新に成功しました'
    else
      render 'edit'
    end
  end
  #the action to delete the data
  def destroy
  end

private

  def user_params
    params.require(:user).permit(:id,:surname, :email, :role)
  end
end
