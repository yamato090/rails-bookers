class BooksController < ApplicationController
  def index
    @books = Book.all
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      flash[:notice] = "successfully created"
      redirect_to book_path(@book)
    else
      @books = Book.all
      flash.now[:error] = @book.errors.full_messages
      flash[:notice] = "error"
      render :index
    end
  end
  def show
    @book = Book.find(params[:id])
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])
     if @book.update(book_params)
       flash[:notice] = "successfully update"
       redirect_to book_path(params[:id])
     else
      flash.now[:error] = @book.errors.full_messages
      flash[:notice] = "error"
      render :edit
     end
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    flash[:notice] = "successfully destroy"
    redirect_to books_path
  end

  private
  def book_params
    params.require(:book).permit(:title, :body)
  end
end

