class KittensController < ApplicationController

  def index
    @kittens = Kitten.all
  end

  def edit
    @kitten = Kitten.find(params[:id])
  end

  def create
    @kitten = Kitten.new(:name => params[:id][:name])

    if @kitten.save
      redirect_to "/"
    else
      render :new
    end
  end

  def show
    @kitten = Kitten.find(params[:id])
  end

end