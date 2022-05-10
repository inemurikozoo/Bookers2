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
    user.update
    redirect_to user_path(user.id)
  end
end
