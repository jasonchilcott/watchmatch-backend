class UserSerializer < ActiveModel::Serializer
  attributes :id, :title, :poster_path, :api_id
  has_many :ratings
  has_many :users, through: :ratings
  
end