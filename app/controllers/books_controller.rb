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
  end

  def edit
  end

  def update
  end

  def destroy
  end
  
  private
  
  def book_params
    params.require(:book).permit(:title, :body)
  end
  
end
