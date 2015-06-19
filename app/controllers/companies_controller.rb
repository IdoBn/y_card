class CompaniesController < ApplicationController
  def show
  end

  def index
  	@companies =  if params[:query]
  		Company.search(params[:query])
  	else
  		Company.all()
  	end
  	
  	render json: { companies: @companies }
  end
end
