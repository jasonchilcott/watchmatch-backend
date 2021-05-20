class UserSerializer < ActiveModel::Serializer
  require_relative '../modules/null_attributes_remover'

  include NullAttributesRemover

  attributes :id, :username, :avatar_url, :detailed_bio, :one_line, :twitter, :instagram
  has_many :ratings
  has_many :movies, through: :ratings
  
end