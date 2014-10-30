class ListingsController < ApplicationController
  
  def index
  	@listVariable = Listing.all #fetches all the listings
  end

  def edit
  	@listVariable = Listing.find(params[:id]) #fetches the particular listing
  end

  def update
  	listVariable = Listing.find(params[:id]) #fetches a particular listing.
    listVariable.amount = params[:amountRequested] #updates the amount requested to the amount in the form edit.html.erb
    listVariable.save  #TO DO: make sure if bad value don't redirect, gives an error, lets people change it. 
  	redirect_to listings_path #redirects so a person can't submit twice. 
  end

end
