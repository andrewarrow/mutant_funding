class ListingsController < ApplicationController
  
  def index
  	@listVariable = Listing.all #fetches stuff
  end

end
