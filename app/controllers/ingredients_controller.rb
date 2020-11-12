class IngredientsController < ApplicationController

def index
    @ingredients = Ingedient.all
  end

  def show
    @ingedient = Ingedient.find( params[:id] )
    @ingredients = @cocktail.doses
  end

  def new
    @ingredient = Cocktail.new
  end


end
