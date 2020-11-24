class RemoveCreatedAtFromRatings < ActiveRecord::Migration[6.0]
  def change 
    remove_column :ratings, :created_at, :datetime
  end
end
