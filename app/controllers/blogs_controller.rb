class BlogsController < ApplicationController
  def homes
    
    @list = List.new
  end
  def create
    list.save
    redirect_to '/top'
  end

  private
  # ストロングパラメータ
  def list_params
    params.require(:list).permit(:title, :body)
  end
end
