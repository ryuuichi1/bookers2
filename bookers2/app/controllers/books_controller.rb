class BooksController < ApplicationController
  def show
     @books = Book.find(params[:id])
     @user = User.find(params[:id])
     @book = Book.new
  end

  def index
     @books = Book.all
     @book = Book.new
  end
  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id 
    @book.save
    redirect_to book_path(@book)
  end
  def edit
  end
  def destroy
  end  
  
  private
  
  def user_params
    params.require(:user).permit(:name, :profile_image, :introduction)
  end
  
  def book_params
    params.require(:book).permit(:title, :opinion)
  end
end
