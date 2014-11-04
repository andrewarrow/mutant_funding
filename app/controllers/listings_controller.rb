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
    
    listVariable.valid?

    if listVariable.save #saves as a listing
     flash[:message] = 'Changed Amount Successfully!'
     redirect_to listings_path
    else
     flash[:message] = 'Invalid entry, please try again.'
     redirect_to edit_listing_path
    end

  end

end
