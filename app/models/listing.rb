class Listing < ActiveRecord::Base # this is the model Listing
  validates :amount, numericality: { only_integer: true, greater_than: 0, less_than: 1_000_000 }
end
