class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :avatar_url, :detailed_bio, :one_line, :password
  
  
end