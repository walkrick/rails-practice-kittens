class CategoriesController < ApplicationController

  def index
    @categories = Category.order(:name)
  end

def edit
  @category = Category.find(params[:id])

end

end