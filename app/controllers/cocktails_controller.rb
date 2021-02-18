class CocktailsController < ApplicationController
  before_action :set_cocktail, only: :show

  def index
    @cocktails = Cocktail.all
  end

  def show
    @dose = Dose.new
    @doses = @cocktail.doses.map do |dose|
      ingredient = Ingredient.find(dose.ingredient_id)
      { ingredient: ingredient.name, description: dose.description, dose: dose}
    end
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new cocktail_params
    if @cocktail.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  private

  def set_cocktail
    @cocktail = Cocktail.find(params[:id])
  end

  def cocktail_params
    params.require(:cocktail).permit(:name)
  end
end
