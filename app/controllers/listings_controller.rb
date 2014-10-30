class ListingsController < ApplicationController
  
  def index
  	@listVariable = Listing.all #fetches stuff
  end

  def edit
  	@listVariable = Listing.find(params[:id])
  end

  def update
  	listVariable = Listing.find(params[:id])
    listVariable.amount = params[:amountRequested]
    listVariable.save  #TO DO: make sure if bad value don't redirect, gives an error, lets people change it. 
  	redirect_to listings_path
  end

end
