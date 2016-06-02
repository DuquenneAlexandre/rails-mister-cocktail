class DosesController < ApplicationController
before_action :set_cocktail

def create
	@dose = @cocktail.doses.build(dose_params)
    @dose.save
	end
 def new
    @dose = Dose.new
  end
private
def dose_params
    params.require(:dose).permit(:description)
  end
def set_cocktail
	@cocktail = Cocktail.find(params[:cocktail_id])
end
end