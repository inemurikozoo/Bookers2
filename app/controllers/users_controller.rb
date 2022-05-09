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
  end
  
  def edit
    @user = User.find(params[:id])
  end
end
