class MovieSerializer < ActiveModel::Serializer
  attributes :id, :title, :poster_path, :api_id, :overview, :release_date
  has_many :ratings
  has_many :users, through: :ratings
  
end