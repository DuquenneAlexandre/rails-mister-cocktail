class IngredientsController < ApplicationController
before_action :set_cocktail

  def create
	@ingredient = @cocktail.doses.ingredients.build(dose_params)
    @ingredient.save
  end

 def new
    @ingredient = Ingredient.new
  end

private

def dose_params
    params.require(:ingredient).permit(:name)
  end

def set_cocktail
	@cocktail = Cocktail.find(params[:cocktail_id])
end
end