class WelcomeController < ApplicationController
  
  def index
  end

  def new_mutant
   #raise params.inspect
   l = Listing.new #creates l as a new instance of Listing class
   l.mutant = params[:mutant] #sets equal to mutant option in form
   l.amount = params[:amount] #sets equal to text amount in form
   l.save #saves as a listing
   redirect_to root_path #refreshes page back to first form once submitted
  end

end
