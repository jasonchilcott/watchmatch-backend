class RemoveUpdatedAtFromRatings < ActiveRecord::Migration[6.0]
  def change
    remove_column :ratings, :updated_at, :datetime
  end
end
