class UserSerializer < ActiveModel::Serializer
  attributes :id , :name
  has_many :preferences
  has_many :diets, through: :preferences
end
