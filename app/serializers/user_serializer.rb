class UserSerializer < ActiveModel::Serializer
  attributes :id , :name, :image
  has_many :preferences
  has_many :diets, through: :preferences
end
