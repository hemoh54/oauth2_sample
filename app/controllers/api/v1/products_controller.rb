class Api::V1::ProductsController < ApplicationController
  before_action :doorkeeper_authorize! # Requires access token for all actions
  
  # before_action -> { doorkeeper_authorize! :read, :write }

  def index
  	puts "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA--#{doorkeeper_token.inspect}"
  	@products = Product.all
  	render json: @products 
  end
end