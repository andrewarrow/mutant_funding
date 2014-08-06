class Listings < ActiveRecord::Migration
  def change
    create_table :listings do |t|

      t.string :mutant
      t.integer :amount
      t.timestamp :created_at
    end
  end
end
