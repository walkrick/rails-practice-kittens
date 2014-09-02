class KittensController < ApplicationController

  def index
    @kittens = Kitten.all
  end

  def update


  end

end