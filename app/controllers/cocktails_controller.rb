class CocktailsController < ApplicationController

  def index
    @cocktails = Cocktail.all
  end

  def show
    @cocktail = Cocktail.find(params[:id])
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(strong_params)
    if @cocktail.save
      redirect_to cocktails_path(@cocktail.id)
    else
      render :new
    end
  end

   def destroy
    @cocktail = Cocktail.find(params[:id])
    @cocktail.destroy
    redirect_to cocktails_path
  end

  private

  def strong_params
    params.require(:cocktail).permit(:name)
  end

  def review_params
    params.require(:cocktail).permit(:id)
  end
end
