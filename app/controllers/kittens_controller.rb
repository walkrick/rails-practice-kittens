class KittensController < ApplicationController

  def index
    @kittens = Kitten.all
  end

  def edit

    @kittens= Kitten.find(params[:id])


  end

end