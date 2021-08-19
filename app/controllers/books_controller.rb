class BooksController < ApplicationController

  def create
    book=Book.new(book_params)
    book.user_id=current_user.id
    book.save
    redirect_to '/books'
  end

  def index
    @book=Book.new
    @books=Book.all
    @user=current_user
    @users=User.all
  end
  
  def show
    @books=Book.all
    @user=current_user
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
  end

  def destroy
  end
  
  private
  
  def book_params
    params.require(:book).permit(:title, :body)  
    #profile_imageも追加？けど投稿機能ではないから違う？
  end
  
end
