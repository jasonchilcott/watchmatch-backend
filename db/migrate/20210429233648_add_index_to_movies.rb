class AddIndexToMovies < ActiveRecord::Migration[6.0]
  def change
    #add_column :movies, :ApiId, :string
    add_index :movies, :api_id, unique: true
  end
end
