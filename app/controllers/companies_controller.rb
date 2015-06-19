class CompaniesController < ApplicationController
  def show
  	@company = Company.find(params[:id])
  	render json: { company: @company }
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
