class AddInstgramToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :instagram, :string
  end
end
