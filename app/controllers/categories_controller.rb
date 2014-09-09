class CategoriesController < ApplicationController

  def index
    @categories = Category.order(:name)
  end

  def update
    @categories = Category.new(:kitten_id => params[:id][:kitten_id])
    if category.save
      redirect_to "/"
    else
      render :new
    end
  end



  def edit
  @category = Category.find(params[:id])

end

end