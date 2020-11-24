class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password_digest
      t.string :avatar_url
      t.string :one_line
      t.text :detailed_bio
    end
  end
end
