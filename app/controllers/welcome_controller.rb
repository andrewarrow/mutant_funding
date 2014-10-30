class WelcomeController < ApplicationController
  
  def index
  end

  def new_mutant
   #raise params.inspect
   l = Listing.new #creates l as a new instance of Listing class
   l.mutant = params[:mutant] #sets equal to mutant option in form
   l.amount = params[:amount] #sets equal to text amount in form

   l.valid? # checks if l is a valid entry

   if l.save #saves as a listing
     flash[:message] = 'Created Listing!'
   else
     #flash[:message] = 'Sorry, there was an error.'
     #raise l.errors.inspect
     flash[:message] = l.errors[:amount].first #should print out specific nature of error. Where are the [""] coming from?
   end
   redirect_to root_path #refreshes page back to first form once submitted
  end

end
