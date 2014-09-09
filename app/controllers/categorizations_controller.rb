class CategorizationsController < ApplicationController

  def create

    @categorization = Categorization.new(:kitten_id => params[:kitten_id], :category_id => params[:categorization][:id])
    if @categorization.save
      redirect_to root_path
    else
=begin
      flash[:notice] = "Category can't be blank"
=end
      redirect_to kitten_path(:id => params[:kitten_id])


    end
  end
end
