class AddApiIdToMovies < ActiveRecord::Migration[6.0]
  def change
    add_column :movies, :api_id, :integer
  end
end
