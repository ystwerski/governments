class Api::V1::CountriesController < ApplicationController

	def index
		@countries = Country.all
	end

	def show
		@country = Country.find(params[:id])
	end

	def create
		@country = Country.new({:continent => params[:continent], :name => params[:Name], :population => params[:Population], :size => params[:size], :government_type => params[:government_type], :highest_officer => params[:highest_officer]})
		if @country.save
		render 'show'
		else
			render json: { errors: @country.errors.full_messages }, status: 422
		end
	end
end
