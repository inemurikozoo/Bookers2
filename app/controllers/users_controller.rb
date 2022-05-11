class UsersController < ApplicationController
  def top
    
  end
  
  def show
    @book = Book.new
    @user = User.find(params[:id])
    @books = @user.books
  end

  def index
    @book = Book.new
    @users = User.all
  end
  
  def edit
    @user = User.find(params[:id])
  end
  
  def update
    user = User.find(params[:id])
    user.update(user_params)
    redirect_to user_path(user.id), notice: 'You have updated user successfully.'
  end
  
  private
  
  def user_params
    params.require(:user).permit(:name, :introduction)
  end  
  
end
