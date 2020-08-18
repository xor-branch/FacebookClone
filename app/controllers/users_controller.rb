class UsersController < ApplicationController

  def new
    @user =User.new
  end
  def create
    @user = User.new(user_params)
    unless @user.save
      render :new
   else
      redirect_to user_path(@user.id)
    end
  end
 def show
   @user =User.find(params[:id])
 end
end
private
  def user_params
    params.require(:user).permit(:name, :email, :password,
                                 :password_confirmation)
  end
