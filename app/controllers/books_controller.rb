class BooksController < ApplicationController
  def homes

  end
  
  def index
  end
  
  def show
  end
  
  def create
    list = List.new(list_params)
    list.save
    redirect_to '/books'
  end

  def edit
  end
  
  private
  def list_params
    params.require(:list).permit(:title, :body)
  end
  
end
